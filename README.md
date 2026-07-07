# OJO UI/UX Skills

Reusable UI/UX skills for OJO design and product agents.

## One-line Install

Install all skills for your agent client:

```bash
# Codex
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target codex

# Claude Code
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target claude-code

# ZCode
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target zcode

# DeepCode
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target deepcode

# OpenCode
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target opencode
```

Default install locations:

| Target | Default skills directory |
| --- | --- |
| Codex | `${CODEX_HOME:-~/.codex}/skills` |
| Claude Code | `${CLAUDE_HOME:-~/.claude}/skills` |
| ZCode | `${AGENTS_HOME:-~/.agents}/skills` |
| DeepCode | `${AGENTS_HOME:-~/.agents}/skills` |
| OpenCode | `${OPENCODE_CONFIG_DIR:-~/.config/opencode}/skills` |

Restart or reload the client if it does not pick up the new skills.

Useful variants:

```bash
# Replace existing installed copies without creating backups
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target codex --force

# Install to a custom client home/config directory
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code

# Install to an explicit skills directory
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills

# Install from a local checkout
./scripts/install.sh

# Preview without writing files
./scripts/install.sh --target opencode --dry-run
```

## Skills

- `app-ui-ux-best-practices` - comprehensive app UI/UX methodology with references for anti-patterns, visual tokens, components, motion, material metaphor, and audit.
- `visual-direction` - general visual and experience direction skill for product, brand, UI/UX, reference adaptation, critique, and downstream handoff.
