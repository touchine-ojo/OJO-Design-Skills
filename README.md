# OJO UI/UX Skills

Reusable UI/UX skills for OJO design and product agents.

## One-line Install

Install all skills for your agent client:

Codex:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target codex
```

Claude Code:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target claude-code
```

ZCode:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target zcode
```

DeepCode:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target deepcode
```

OpenCode:

```bash
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

Replace existing installed copies without creating backups:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target codex --force
```

Install to a custom client home/config directory:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | CLAUDE_HOME=/path/to/.claude bash -s -- --target claude-code
```

Install to an explicit skills directory:

```bash
curl -fsSL https://raw.githubusercontent.com/touchine-ojo/OJO-UI-UX-skills/main/scripts/install.sh | bash -s -- --target opencode --dest /path/to/skills
```

Install from a local checkout:

```bash
./scripts/install.sh
```

Preview without writing files:

```bash
./scripts/install.sh --target opencode --dry-run
```

## Skills

- `app-ui-ux-best-practices` - comprehensive app UI/UX methodology with references for anti-patterns, visual tokens, components, motion, material metaphor, and audit.
- `visual-direction` - general visual and experience direction skill for product, brand, UI/UX, reference adaptation, critique, and downstream handoff.
