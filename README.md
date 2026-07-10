<div align="center">

# OJO Design Skills

**Reusable UI/UX design skills for AI coding agents — Codex, Claude Code, ZCode, and more.**

[![License: MIT](https://img.shields.io/github/license/touchine-ojo/OJO-Design-Skills?color=blue)](./LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/touchine-ojo/OJO-Design-Skills?style=flat&color=yellow)](https://github.com/touchine-ojo/OJO-Design-Skills/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/touchine-ojo/OJO-Design-Skills?color=brightgreen)](https://github.com/touchine-ojo/OJO-Design-Skills/commits/main)
[![Clients](https://img.shields.io/badge/clients-7-success)](#quick-start)
[![Skills](https://img.shields.io/badge/skills-2-orange)](#skills)

**English** · [简体中文](./docs/README.zh-CN.md) · [日本語](./docs/README.ja-JP.md) · [한국어](./docs/README.ko-KR.md) · [Español](./docs/README.es-ES.md)

</div>

---

OJO Design Skills is a drop-in skill bundle that teaches your AI coding agent how to make real design decisions — not generic "AI-looking" layouts. Install once, and your agent gains a complete UI/UX methodology: brand-driven visual direction, design tokens, component recipes, motion specs, and a strict anti-pattern guardrail that keeps output from looking like slop.

It is agent-agnostic and ships with a single installer that targets every major client.

---

## Features

- **Two-track methodology.** *Convention Track* adopts a proven design language for SaaS and utility products; *Innovation Track* builds brand-driven identity via Material Metaphor, archetype, narrative, or cultural-semiotic approaches.
- **Anti-AI-slop guardrails.** Hard-banned combinations (purple-blue gradients, gray-box placeholders, single-hue palettes) are enforced as rules, not suggestions.
- **Real-imagery requirement.** Any screen that shows imagery must use real, subject-specific assets — no decorative placeholders, fake stock smiles, or gradient blobs.
- **Code-grade output.** Components resolve to atomic Tailwind class strings with an 8-state interaction model; motion uses spring physics, not fixed curves.

## Showcase

The same brief, with and without these skills installed.

<table>
  <tr>
    <th>With OJO Skills</th>
    <th>Without OJO Skills</th>
  </tr>
  <tr>
    <td align="center"><img src="./docs/images/showcase-1-with.gif" alt="Coffee app home with OJO Skills" width="360"></td>
    <td align="center"><img src="./docs/images/showcase-1-without.gif" alt="Coffee app home without OJO Skills" width="360"></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><img src="./docs/images/showcase-2-riot.gif" alt="Rock festival landing page with OJO Skills" width="720"></td>
  </tr>
</table>

## Quick start

Install all skills with one command — replace `<client>` with your agent:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target <client>
```

| Client | `--target` | Default install directory |
| --- | --- | --- |
| Codex | `codex` | `${CODEX_HOME:-~/.codex}/skills` |
| Claude Code | `claude-code` | `${CLAUDE_HOME:-~/.claude}/skills` |
| ZCode | `zcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| DeepCode | `deepcode` | `${AGENTS_HOME:-~/.agents}/skills` |
| WorkBuddy | `workbuddy` | `${WORKBUDDY_HOME:-~/.workbuddy}/skills` |
| OpenCode | `opencode` | `${OPENCODE_CONFIG_DIR:-~/.config/opencode}/skills` |
| Generic agent | `generic` | `${AGENTS_HOME:-~/.agents}/skills` |

Restart or reload the client if it does not pick up the new skills.

<details>
<summary>Advanced install options</summary>

Replace existing copies without backups:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target codex --force
```

Install to a custom client home:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code
```

Install to an explicit directory:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-Design-Skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills
```

Install from a local checkout (useful for development):

```bash
./scripts/install.sh
```

Preview what would be written without changing files:

```bash
./scripts/install.sh --target opencode --dry-run
```

Install a single skill (`--skill` can be repeated):

```bash
./scripts/install.sh --target zcode --skill visual-direction
```

</details>

## Skills

### `app-ui-ux-best-practices`

The core methodology. Picks a track based on the product's value proposition, then produces complete design specifications.

- **Convention Track** — adopt one proven design language (Notion, Linear, Stripe, Things 3, …) for SaaS and utility products.
- **Innovation Track** — build a brand-driven identity via Material Metaphor, archetype, narrative, or cultural-semiotic methods.
- Ships with **9 reference files**: anti-patterns, visual tokens, component recipes, motion system, material metaphor, design audit, and more.

### `visual-direction`

A general visual and experience-direction skill. Explores directions, adapts references (URL, screenshot, Figma), critiques proposals, and hands off a portable brief to downstream design-system, IA, or implementation work. No fixed output template — it responds in whatever shape the task needs.

## How it works

```
Product brief
   │
   ├─ Convention Track ──► pick proven system ──► tokens ──► components ──► specs
   │   (SaaS / utility)        (Notion, Linear…)
   │
   └─ Innovation Track ──► insight + feeling ──► methodology ──► tokens ──► specs
       (brand-driven)         (Material Metaphor / archetype / narrative)
```

Both tracks require a mandatory style-direction confirmation gate before producing tokens — the agent presents 2–3 genuinely distinct directions and waits for selection. Once installed, skills are activated automatically when the agent detects design-related intent (e.g. "design system", "视觉设计", "design tokens").

## Contributing

Skills are plain Markdown files under `skills/<name>/SKILL.md` plus optional `references/` files. To add or refine a skill, edit the files and run the installer locally to verify:

```bash
./scripts/install.sh --dry-run
```

## License

[MIT](./LICENSE)
