---
name: visual-direction
description: "General visual and experience direction skill for product, brand, UI/UX, reference adaptation, design critique, and downstream design handoff. Use when users ask for visual direction, design direction, look and feel, UI language, reference-informed adaptation, design-system direction, visual refinement, or prototype style guidance."
---

# Visual Direction

Use this skill to make strong visual and experience-direction decisions for product, brand, and UI/UX work. Work from the existing conversation context. Do not ask the user to repeat confirmed positioning, product scope, platform, references, or constraints.

This is a general skill, not a fixed output template. It can explore directions, interpret references, refine an existing design language, critique a proposal, or turn a selected direction into a portable brief for downstream design-system, IA, wireframe, prototype, or implementation work.

## Core Rules

- Match the user's language or the parent agent's session-locked language.
- Use `app-ui-ux-best-practices` from this skill bundle as the design-methodology companion. Follow its design quality guidance, but keep this skill's no-fixed-output rule when the task is exploratory, advisory, or caller-shaped.
- Do not force A/B/C choices, blockquotes, required field lists, exact labels, or confirmation questions unless the user or caller asks for them.
- If the caller provides a schema or required fields, satisfy that schema.
- Ask only when a missing decision would materially change the direction. Otherwise make a reasoned call and state the assumption briefly.
- Do not expose internal tool names, skill names, activation details, stage labels, scratch checks, or handoff mechanics.
- Prefer the user's supplied references over generic design examples.
- Resolve structure before decoration: register, information architecture, interaction mode, material behavior, and accessibility come before palette styling.

## Use Cases

- New visual identity or product UI direction.
- Reference-informed adaptation from a URL, screenshot, Figma, moodboard, or competitor.
- Design-system direction for apps, websites, SaaS, games, dashboards, editorial, commerce, or branded experiences.
- Visual critique and refinement of an existing direction.
- Downstream briefs for design tokens, wireframes, prototypes, or code.

Do not generate final code, PRDs, token files, or production assets unless the user explicitly asks for that artifact. If another step owns the artifact, return the clearest brief it needs.

## Workflow

### 1. Classify The Task

Choose the task mode:

- **Explore**: produce one recommendation or a small set of distinct directions.
- **Reference-informed**: analyze the provided reference first, then decide what to keep, change, or avoid.
- **Refine**: improve an existing direction without restarting from scratch.
- **Critique**: identify mismatches, risks, and concrete fixes.
- **Handoff**: convert an approved direction into downstream-ready guidance.

If the product/domain is missing and the answer would become generic, ask one short question about what the product is for. If platform is missing but obvious, proceed with that assumption.

### 2. Gather Evidence

- Use inherited context as the primary source.
- Read `../app-ui-ux-best-practices/references/anti-patterns.md` before substantive visual direction work when the file is available.
- Read additional `app-ui-ux-best-practices/references/*` files only when the current decision needs that layer: visual tokens, component recipes, motion, material metaphor, or design audit.
- For user-provided references, analyze the reference before searching elsewhere.
- Search current examples only when category conventions, product references, or trend timing would change the answer.
- Prefer high-signal product/design references: real products, official product sites, Mobbin, UINotes, Behance, Dribbble, Awwwards, and category leaders.
- Treat research as internal calibration. Surface conclusions, not research logs.

### 3. Synthesize The Direction

**Derive the style register first (fit before diversity).** From the product's subject matter, audience, brand voice, and cultural context, set five observable dials: `Energy` (quiet↔loud), `Finish` (raw↔polished), `Density` (sparse↔dense), `Weight` (light↔heavy), `Seriousness` (playful↔solemn). Every dial value must cite evidence — no habit defaults in either direction: quiet/polished is fully legitimate when the evidence earns it, and a rock-venue or zine brief must actually land loud/raw instead of being smoothed into polished minimalism. Mood adjectives (premium, refined, restrained, epic, literary, tasteful) are never a justification; translate them into observable values before using them (see `../app-ui-ux-best-practices/references/anti-patterns.md` § Vague-Word Firewall).

Then decide only the layers needed for the task:

- Product promise and target user.
- Register dials with their evidence.
- Information architecture and navigation model.
- Layout density, content hierarchy, interaction rhythm, and state model.
- Color identity, typography attitude, material/depth, motion behavior, and icon/image stance.
- Constraints, risks, and non-goals.

For mobile/app work, apply a structural lens before style (a design lens, not a mandatory output schema):

- Navigation shell chosen from the product flow: `TabBar`, `Stack`, `Hub`, `Single-view`, `Feed`, player, canvas/workspace, or workbench.
- Which moments carry visual expression and which routine controls stay quiet — keep concrete evidence such as player controls, feed rhythm, canvas edge tools, catalog comparison, or tactile media surfaces if the concept depends on them.

Do not default every app to a bottom tab bar. A tab bar is earned only by genuinely peer top-level destinations.

### 4. Respond In The Useful Shape

Use the smallest structure that helps the user or caller act:

- Direct recommendation with rationale.
- Compact comparison of 2-3 directions.
- Reference adaptation note: keep / change / avoid.
- Critique: issue / risk / fix.
- Downstream brief: selected direction, IA implications, visual-system guidance, constraints, and open decisions.

If comparing options, make each option meaningfully different in structure and emotional register. Do not create light/dark/warm variants of the same idea. If the user asks for a single direction, give one strong direction instead of padding alternatives.

**Register constraint (overrides diversity)**: when the evidence locks a register region, all compared options stay inside it — a rock-venue brief gets loud/raw options that differ in layout, color identity, and depth, never one loud option "balanced" by polished-minimal alternatives. Spread options across register levels only when the evidence is genuinely ambiguous.

## Quality Guardrails

- Avoid one-note palettes, dominant hue family repetition, and mode variants.
- Avoid default purple on dark, neon glow borders, cheap pink-cyan gradients, stock SaaS hero cards, and unearned glassmorphism.
- Do not let all directions collapse into beige/cream/sand/tan, dark blue/slate, brown/orange/espresso, or purple-blue AI defaults.
- Mobile/app industry defaults are challenged, not banned. Food orange, finance blue, health blue-white, sleep purple/deep blue, fluorescent green, generic blue, and Claude orange are valid accent choices when used with restraint, but do not repeat them by habit.
- Every app direction needs a saturation plan: quiet base, distinct support hue, restrained accent, and active states that are not hue-only.
- Prefer active states supported by color plus shape, weight, or indicator.
- Couple visual direction with IA. Different visual worlds should imply different layout priorities, page shapes, navigation, and interaction rhythms.
- Every interactive component needs complete state thinking, even when the final answer only summarizes the direction.
- "Premium" should come from hierarchy, spacing, material logic, and state quality, not extra glow.
- No unearned register defaults, in either direction: do not deliver quiet-polished minimalism for a brief whose evidence says loud/raw, and do not force grit onto a product whose evidence says quiet. The failure is skipping derivation, not any specific register.
- Mood adjectives are not rationale. Translate premium/refined/restrained/epic into dial values plus observable decisions, or drop them.

## Optional Companion Skills

If the environment also has specialized UI/UX skills installed, use them as optional references, not hard dependencies:

- Use design-system or token skills when the task needs token handoff.
- Use reference-capture skills when fidelity to a URL/screenshot matters.
- Use motion or animation skills when interaction choreography is the main differentiator.
- Use audit or critique skills when evaluating an existing design.
