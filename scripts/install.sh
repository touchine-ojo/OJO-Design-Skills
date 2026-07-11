#!/usr/bin/env bash

set -euo pipefail

REPO_SLUG="touchine-ojo/OJO-Design-Skills"
# New canonical env var names; fall back to the legacy OJO_UI_UX_SKILLS_* names
# so existing user/CI config keeps working after the rename.
REF="${OJO_DESIGN_SKILLS_REF:-${OJO_UI_UX_SKILLS_REF:-main}}"
TARGET="${OJO_DESIGN_SKILLS_TARGET:-${OJO_UI_UX_SKILLS_TARGET:-codex}}"
TOOL_HOME_DIR=""
DEST_DIR=""
SOURCE_DIR=""
FORCE="false"
DRY_RUN="false"
SELECTED_SKILLS=()

usage() {
  cat <<'EOF'
Usage:
  scripts/install.sh [options]
  curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target codex

Options:
  --target <name>      codex, claude-code, zcode, deepcode, workbuddy, opencode, or generic. Default: codex
  --home <path>        Target tool home/config directory
  --codex-home <path>  Legacy alias for --target codex --home <path>
  --dest <path>        Skills install directory. Overrides --home
  --source <path>      Local OJO-Design-Skills checkout to install from
  --ref <ref>          Git ref for curl/remote install. Default: main
  --skill <name>       Install one skill. Can be repeated. Default: all skills
  --force              Replace existing skill dirs without making backups
  --dry-run            Print planned actions without writing files
  -h, --help           Show this help

Environment:
  CODEX_HOME                 Codex home override. Default: ~/.codex
  CLAUDE_HOME                Claude Code home override. Default: ~/.claude
  AGENTS_HOME                ZCode/DeepCode/generic shared home override. Default: ~/.agents
  WORKBUDDY_HOME             WorkBuddy home override. Default: ~/.workbuddy
  OPENCODE_CONFIG_DIR        OpenCode config override. Default: ~/.config/opencode
  OJO_DESIGN_SKILLS_TARGET   Target override (legacy: OJO_UI_UX_SKILLS_TARGET)
  OJO_DESIGN_SKILLS_REF      Git ref override for remote install (legacy: OJO_UI_UX_SKILLS_REF)
EOF
}

log() {
  printf '[ojo-design-skills] %s\n' "$*" >&2
}

die() {
  printf '[ojo-design-skills] ERROR: %s\n' "$*" >&2
  exit 1
}

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "missing required command: $1"
}

require_value() {
  local flag="$1"
  local value="${2:-}"
  [[ -n "${value}" ]] || die "${flag} requires a value"
}

normalize_target() {
  case "$1" in
    codex)
      printf 'codex\n'
      ;;
    claude|claude-code|claudecode)
      printf 'claude-code\n'
      ;;
    zcode|z-code)
      printf 'zcode\n'
      ;;
    deepcode|deep-code)
      printf 'deepcode\n'
      ;;
    workbuddy|work-buddy)
      printf 'workbuddy\n'
      ;;
    opencode|open-code)
      printf 'opencode\n'
      ;;
    generic|agent|agents|agent-skills)
      printf 'generic\n'
      ;;
    *)
      return 1
      ;;
  esac
}

target_display_name() {
  case "$1" in
    codex)
      printf 'Codex\n'
      ;;
    claude-code)
      printf 'Claude Code\n'
      ;;
    zcode)
      printf 'ZCode\n'
      ;;
    deepcode)
      printf 'DeepCode\n'
      ;;
    workbuddy)
      printf 'WorkBuddy\n'
      ;;
    opencode)
      printf 'OpenCode\n'
      ;;
    generic)
      printf 'Generic Agent Skills\n'
      ;;
  esac
}

target_home_default() {
  case "$1" in
    codex)
      printf '%s\n' "${CODEX_HOME:-${HOME}/.codex}"
      ;;
    claude-code)
      printf '%s\n' "${CLAUDE_HOME:-${HOME}/.claude}"
      ;;
    zcode|deepcode|generic)
      printf '%s\n' "${AGENTS_HOME:-${HOME}/.agents}"
      ;;
    workbuddy)
      printf '%s\n' "${WORKBUDDY_HOME:-${HOME}/.workbuddy}"
      ;;
    opencode)
      printf '%s\n' "${OPENCODE_CONFIG_DIR:-${OPENCODE_HOME:-${XDG_CONFIG_HOME:-${HOME}/.config}/opencode}}"
      ;;
  esac
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)
      require_value "$1" "${2:-}"
      TARGET="${2:-}"
      shift 2
      ;;
    --home)
      require_value "$1" "${2:-}"
      TOOL_HOME_DIR="${2:-}"
      shift 2
      ;;
    --codex-home)
      require_value "$1" "${2:-}"
      TARGET="codex"
      TOOL_HOME_DIR="${2:-}"
      shift 2
      ;;
    --dest)
      require_value "$1" "${2:-}"
      DEST_DIR="${2:-}"
      shift 2
      ;;
    --source)
      require_value "$1" "${2:-}"
      SOURCE_DIR="${2:-}"
      shift 2
      ;;
    --ref)
      require_value "$1" "${2:-}"
      REF="${2:-}"
      shift 2
      ;;
    --skill)
      require_value "$1" "${2:-}"
      SELECTED_SKILLS+=("${2:-}")
      shift 2
      ;;
    --force)
      FORCE="true"
      shift
      ;;
    --dry-run)
      DRY_RUN="true"
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      die "unknown argument: $1"
      ;;
  esac
done

normalized_target="$(normalize_target "${TARGET}")" || die "unsupported target: ${TARGET}. Use codex, claude-code, zcode, deepcode, workbuddy, opencode, or generic."
TARGET="${normalized_target}"
TARGET_DISPLAY="$(target_display_name "${TARGET}")"

if [[ -z "${TOOL_HOME_DIR}" ]]; then
  TOOL_HOME_DIR="$(target_home_default "${TARGET}")"
fi

[[ -n "${TOOL_HOME_DIR}" ]] || die "--home cannot be empty"
if [[ -z "${DEST_DIR}" ]]; then
  DEST_DIR="${TOOL_HOME_DIR}/skills"
fi

resolve_script_source() {
  local script_dir=""
  [[ -n "${BASH_SOURCE[0]:-}" && -f "${BASH_SOURCE[0]}" ]] || return 1
  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd -P || true)"
  if [[ -n "${script_dir}" && -d "${script_dir}/../skills" ]]; then
    cd "${script_dir}/.." && pwd -P
    return 0
  fi
  return 1
}

download_source() {
  need_cmd curl
  need_cmd tar

  local tmp_dir archive_url root_dir
  tmp_dir="$(mktemp -d)"
  archive_url="https://codeload.github.com/${REPO_SLUG}/tar.gz/${REF}"
  log "downloading ${REPO_SLUG}@${REF}"
  curl -fsSL "${archive_url}" | tar -xz -C "${tmp_dir}"
  root_dir="$(find "${tmp_dir}" -mindepth 1 -maxdepth 1 -type d | head -n 1)"
  [[ -n "${root_dir}" && -d "${root_dir}/skills" ]] || die "downloaded archive does not contain skills/"
  printf '%s\n' "${root_dir}"
}

if [[ -z "${SOURCE_DIR}" ]]; then
  if SOURCE_DIR="$(resolve_script_source)"; then
    :
  else
    SOURCE_DIR="$(download_source)"
  fi
fi

SOURCE_DIR="$(cd "${SOURCE_DIR}" && pwd -P)"
[[ -d "${SOURCE_DIR}/skills" ]] || die "source does not contain skills/: ${SOURCE_DIR}"

if [[ ${#SELECTED_SKILLS[@]} -eq 0 ]]; then
  while IFS= read -r skill_path; do
    SELECTED_SKILLS+=("$(basename "$(dirname "${skill_path}")")")
  done < <(find "${SOURCE_DIR}/skills" -mindepth 2 -maxdepth 2 -name SKILL.md -print | sort)
fi

[[ ${#SELECTED_SKILLS[@]} -gt 0 ]] || die "no skills found to install"

timestamp="$(date -u +%Y%m%dT%H%M%SZ)"
installed=()
skipped=()

if [[ "${DRY_RUN}" == "true" ]]; then
  log "dry run: no files will be written"
else
  mkdir -p "${DEST_DIR}"
fi

log "target client: ${TARGET_DISPLAY} (${TARGET})"

for skill_name in "${SELECTED_SKILLS[@]}"; do
  [[ -n "${skill_name}" ]] || die "--skill cannot be empty"

  source_skill="${SOURCE_DIR}/skills/${skill_name}"
  target_skill="${DEST_DIR}/${skill_name}"
  [[ -f "${source_skill}/SKILL.md" ]] || die "skill not found in source: ${skill_name}"

  if [[ -d "${target_skill}" ]] && diff -qr "${source_skill}" "${target_skill}" >/dev/null 2>&1; then
    log "already current: ${skill_name}"
    skipped+=("${skill_name}")
    continue
  fi

  if [[ "${DRY_RUN}" == "true" ]]; then
    log "would install: ${skill_name} -> ${target_skill}"
    installed+=("${skill_name}")
    continue
  fi

  if [[ -e "${target_skill}" ]]; then
    if [[ "${FORCE}" == "true" ]]; then
      rm -rf "${target_skill}"
    else
      backup_path="${target_skill}.backup.${timestamp}"
      log "backing up existing ${skill_name} to ${backup_path}"
      mv "${target_skill}" "${backup_path}"
    fi
  fi

  cp -R "${source_skill}" "${target_skill}"
  installed+=("${skill_name}")
  log "installed: ${skill_name}"
done

manifest_path="${DEST_DIR}/.ojo-design-skills-install.json"
if [[ "${DRY_RUN}" != "true" ]]; then
  {
    printf '{\n'
    printf '  "source": "%s",\n' "${REPO_SLUG}"
    printf '  "ref": "%s",\n' "${REF}"
    printf '  "target": "%s",\n' "${TARGET}"
    printf '  "targetName": "%s",\n' "${TARGET_DISPLAY}"
    printf '  "home": "%s",\n' "${TOOL_HOME_DIR}"
    printf '  "dest": "%s",\n' "${DEST_DIR}"
    printf '  "installedAt": "%s",\n' "${timestamp}"
    printf '  "skills": ['
    for index in "${!SELECTED_SKILLS[@]}"; do
      if [[ "${index}" -gt 0 ]]; then
        printf ', '
      fi
      printf '"%s"' "${SELECTED_SKILLS[$index]}"
    done
    printf ']\n'
    printf '}\n'
  } > "${manifest_path}"
  log "wrote config: ${manifest_path}"
fi

if [[ ${#installed[@]} -gt 0 ]]; then
  log "installed skills: ${installed[*]}"
fi
if [[ ${#skipped[@]} -gt 0 ]]; then
  log "unchanged skills: ${skipped[*]}"
fi

log "install target: ${DEST_DIR}"
log "restart or reload ${TARGET_DISPLAY} if it does not pick up the new skills"
