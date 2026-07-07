---
name: app-ui-ux-best-practices
description: "Comprehensive App UI/UX design best practices. Supports two tracks: Convention Track (adopt a proven design language for SaaS/utility products) and Innovation Track (multiple brand-driven design methodologies — Material Metaphor, archetype-driven, narrative-driven, cultural-semiotic — for brand-driven products). Use when users want to: (1) Define visual identity for a new product, (2) Create design specifications and tokens, (3) Establish UI component guidelines, (4) Build a cohesive design language, (5) Review UI/UX quality, (6) Refine existing designs, (7) Audit design quality. Triggers: 'design system', 'UI design', 'UX design', 'visual identity', 'design specs', 'design tokens', 'component guidelines', 'look and feel', 'app design', 'design refine', 'design audit', '视觉设计', '设计规范', '设计系统', 'UI最佳实践', 'UX最佳实践'."
---

# App UI/UX Best Practices

Create cohesive, professional UI design systems. For brand-driven products, pick a methodology that fits the brand — **Material Metaphor**, **archetype-driven**, **narrative-driven**, **cultural-semiotic**, or another approach grounded in research. For utility/SaaS products, adopt one proven design language directly (chosen from a wide pool, not a fixed shortlist). Both paths produce actionable design specifications.

## Core Design Philosophy

**ISFP Designer Persona:** Approach every design decision as a sensory, instinct-driven act. Trust aesthetic intuition. Every pixel must earn its place through visual contribution, not just functional necessity.

**Intentionality:** Nothing is arbitrary. Every color, shadow, radius, and spacing value must serve a clear purpose within the chosen visual direction.

**Surprise within coherence:** The interface should feel familiar enough to use without friction, yet surprising enough to be memorable. Avoid generic patterns while maintaining usability.

**Tactile quality:** Users should feel an instinctive desire to touch the interface. Surfaces must convey material reality through shadow, depth, and texture.

**Real visual assets:** When a screen needs imagery, use real, subject-specific photographs, screenshots, product renders, map/media thumbnails, or generated bitmap assets that clearly depict the actual thing. Do not use gray boxes, "Image" labels, generic gradient blobs, fake stock smiles, or decorative SVGs as a substitute for real visual content.

**Silence between notes:** Whitespace is not empty space. It is active, guiding attention and creating rhythm. Generous spacing is a feature, not a waste.

## Language Rule (HIGHEST PRIORITY - STRICTLY ENFORCED)

- **MANDATORY:** Your output language MUST exactly match the parent agent's session-locked language (system prompt §9.1 — single source of truth). DO NOT independently detect from user-message snippets, contextSummary text, or any product context.
- **NEVER default to English.** The session-locked language takes absolute precedence.
- This rule applies to EVERY response, with ZERO exceptions.
- Fallback only when no session lock is available: apply the system prompt §9.1 frame rule — strip proper nouns (brands, person names, product names, foreign loan-words), judge by the remaining grammatical frame.

## Pre-Execution (Required Before Any Step)

**CRITICAL:** Before proceeding with any design work, you MUST read the following reference file:

- **`references/anti-patterns.md`** (MANDATORY) - Strictly avoid all banned patterns listed. This includes AI-generated style detection, banned color combinations/treatments, lazy stereotypes, and quality failures.

Additional reference files will be loaded on-demand per step as indicated in the workflow below.

## Workflow Overview

**Current year:** 2026. If using date keywords in searches, use 2026 unless users specify otherwise.

**Both Tracks:**
1. **Product Type Assessment** → Convention Track or Innovation Track
2. **Inspiration Research** → Web search for references (MANDATORY)

**Convention Track path:**
3. **Style Direction Confirmation** → 2-3 options based on proven design systems → **WAIT for user selection**
4. Design Tokens (read `references/visual-tokens.md`)
5. Component Mapping (read `references/component-recipe.md`)
6. Motion & Behavior (read `references/motion-system.md`)
7. Layout Requirements
8. Design Specs Output

**Innovation Track path:**
3. **Insight Discovery** → Feeling keywords
4. **Style Direction Confirmation** → 2-3 options grounded in the chosen brand-driven methodology → **WAIT for user selection**
5. Brand-Driven Methodology & Visual Physics — pick ONE: Material Metaphor (read `references/material-metaphor.md`), archetype-driven, narrative-driven, cultural-semiotic, or another research-grounded approach
6. Design Tokens (read `references/visual-tokens.md`)
7. Component Mapping (read `references/component-recipe.md`)
8. Motion & Behavior (read `references/motion-system.md`)
9. Layout Requirements
10. Design Specs Output

## Agent Usage Context

This skill is shared across multiple agents with different entry points:

- **visual-direction** (streaming, no handoff): Uses Steps 0-1 and Style Direction Confirmation only. Explores directions, presents options, returns selected direction. Does NOT proceed to Design Tokens or beyond.
- **design-dna** (streaming, no handoff): Receives a confirmed direction from upstream. **Skips Style Direction Confirmation entirely** -- starts from Step 4 (Design Tokens) onward. Uses reference files for token structure, component recipes, motion specs, and quality gate.

When this skill is activated by `design-dna`, the agent should ignore the Style Direction Confirmation section and begin from Design Tokens using the confirmed direction provided in its `contextSummary`.

## General Skill Mode Override

When this skill is used as a companion to `visual-direction`, or when the caller asks for advisory critique, reference adaptation, refinement, or a caller-shaped handoff, treat the mandatory option menu / wait gate / blockquote template in Style Direction Confirmation as optional methodology scaffolding rather than an output contract.

In General Skill Mode:
- The caller's requested shape or schema wins.
- Do not force A/B/C, blockquotes, exact field labels, or confirmation questions.
- Provide one decisive direction when the caller asks for one.
- Compare 2-3 directions only when alternatives help the decision.
- Still preserve the quality bar: anti-pattern avoidance, UI language, IA coupling, palette diversity, material fidelity, interaction states, and accessibility.

## Step 0: Product Type Assessment (Before Any Design)

Determine which track to follow based on the product's core value proposition:

**Convention Track** — when product value is in **utility**, not visual experience:
- SaaS dashboards, B2B back-offices, developer tools, productivity/efficiency tools, simple utility web apps
- Users expect **clarity, predictability, and low cognitive load**; novel visual language adds friction, not value
- Adopt one proven design language directly. The reference pool is wide and there is **no fixed shortlist** — pick the system that best matches THIS product. Candidates include (any one of, rotate across mentions, do NOT lock to the first 2-3 names): Notion, Spotify, Arc, Things 3, Figma, Airbnb, Craft, Telegram, Duolingo, Raycast, Bear, Superhuman, GitHub, Todoist, Linear, Stripe, Vercel, Apple HIG, Google Material 3. Do NOT default to "Linear/Stripe/Vercel" just because they appear together in legacy examples.
- After Inspiration Research (Step 1) and Style Direction Confirmation, skip Insight Discovery and brand-methodology steps

**Innovation Track** — when product value depends on **brand experience and emotional differentiation**:
- Consumer social, branded e-commerce, lifestyle, creative tools, entertainment
- Visual identity IS the product advantage; generic design is a competitive risk
- Follow the brand-driven methodology path (see Step 3) — Material Metaphor is one well-documented option, but archetype-driven, narrative-driven, and cultural-semiotic approaches are equally valid when the brand calls for them

**If uncertain**, default to Convention Track — over-designing a utility product is a worse outcome than under-designing a brand product.

**CRITICAL — Both tracks require user confirmation:** You MUST present 2-3 distinct visual direction options and wait for user selection before proceeding with design tokens or component work. See Style Direction Confirmation section below.

---

## Step 1: Inspiration Research (MANDATORY)

### Standard Research (no user reference)
You MUST use `websearch` to find 3-5 high-quality design references. Do not use generic photo search as a shortcut for design direction; Unsplash-style sources are valid later for real photographic assets, not as the only style research.

**Search**: "best [industry] app design 2026" + "site:mobbin.com OR site:uinotes.com OR site:dribbble.com OR site:behance.net"

**Target Sources**: Mobbin (real products), UINotes (curated UI), Dribbble (concepts), Behance (case studies), Awwwards, and industry leaders relevant to THIS product (rotate across the candidate pool listed in Step 0 — do not default to the same 2-3 names every time)

### Reference-Informed Research (user provided reference image/URL/Figma)
When the user provided a visual reference for a new product (Scenario A-Ref):
- **Analyze the user's reference FIRST** — this is the primary calibration source. If it's a URL, use `firecrawl_scrape` with the correct format: for design platforms (Dribbble/Behance/Mobbin/UINotes) use `formats: ["images"]` to extract actual design artwork; for product official websites use `formats: ["screenshot"]` (optionally add `"branding"` for color/typography data). Do NOT use `screenshot` format on design platform pages — a webpage screenshot captures page chrome, not the design reference. If it's a screenshot/image, analyze visual characteristics directly: dominant colors, typography feel, spacing density, card style, light/dark mode, overall mood.
- Optionally supplement with 1-2 `websearch` results to identify what design tradition the reference belongs to. Use real-photo sources only when the product needs photographic content assets.
- The reference analysis directly informs the direction options (see Style Direction Confirmation below).

### Common rules (both modes)
**Research only — internal use:** Use `websearch` and optionally `firecrawl_scrape` for internal style calibration. All fetched images are for internal analysis only — **never output any image to the user during Inspiration Research or direction option steps.**

**Real image requirement:** Once implementation/specification reaches actual screens, any image slot must name or use a concrete asset type tied to the product domain: real product photos, venue/food/travel photos, real UI screenshots, user-uploaded media, realistic avatars, album art, listing thumbnails, maps, or generated bitmap imagery that depicts the subject. Valid acquisition paths include user-provided assets, official product/media pages, `websearch`/image search, Dribbble/Behance/Mobbin/UINotes for design artwork, Unsplash/Pexels/Wikimedia-style sources for real photography, and generated bitmap images when no suitable real asset exists. If no credible image is available, redesign the layout so it does not depend on imagery. Do NOT ship decorative placeholders.

**Output**: Use internal research conclusions to ground direction options. Direction options must be presented as plain text only.

## Style Direction Confirmation (MANDATORY — Both Tracks)

Present **2-3 distinct visual direction options** to the user. **Do NOT proceed until the user selects one.**

**When**: Convention Track (after Inspiration Research), Innovation Track (after Insight Discovery)

**HARD RULE — NO IMAGES IN OPTIONS:** Do NOT fetch, load, or embed any image during direction option presentation. Options are plain text only — direction name + keywords. This rule has no exceptions.

**Output format**: All direction options MUST be wrapped in a single markdown blockquote (`>` prefix) with a bold title `> **视觉方向**`. The confirmation question goes OUTSIDE the blockquote.

**Prescriptive template**:
```
> **视觉方向**
>
> A: {Direction name}
> - Feel: {metaphor, ≤ 10 words}
> - Color: {color names, ≤ 6 words}
> - Texture: {1-2 tactile words}
> - Motion: {action phrase, ≤ 8 words}
> - Layout: {layout philosophy in one short phrase, e.g. "single-column immersive scroll" / "split-pane utility grid" / "floating cards with gestures"}
> - Pages: {3-5 page names with brief shape hints, e.g. "Home (single-flow feed) · Detail (immersive) · Profile (sparse)"}
>
> B: {Direction name}
> - Feel: ...
> - Color: ...
> - Texture: ...
> - Motion: ...
> - Layout: ...
> - Pages: ...

{confirmation question, e.g., "喜欢哪个方向？"}
```

**Card preparation (REQUIRED before generating the cards)**: For each direction, silently prepare the dense design decisions behind the visible card — what it feels like to use, what surfaces it evokes, what physical or emotional reference it draws from, how the IA / pages would actually flow, what kind of user it courts. This preparation must not appear in user-facing output, tool results, headings, or scratch prose. Distill the visible cards from that preparation. The preparation is the seed; the card is the harvest. Without it, the cards become 30-word stubs that produce flat downstream output.

**Convention Track options**: Name the reference system (e.g., "Notion-style", "Spotify-style"). Pick from the wide candidate pool in Step 0 — rotate across mentions, do not lock to any single trio. Include color tone, border radius, density, feel. Options must be meaningfully different across multiple axes (not three close cousins of the same system).

**Innovation Track options**: Name the creative direction. The naming pattern is methodology-flexible — Material Metaphor uses "{material} x {environment}" (e.g., "Liquid Metal x Nordic Winter"); archetype-driven uses a character name; narrative-driven uses a scene phrase; cultural-semiotic uses a movement reference. Include Feel/Color/Texture/Motion/Layout/Pages keywords. Options should represent genuinely different aesthetic directions, not three flavors of one methodology.

**Reference-informed options** (Scenario A-Ref): Options must be **anchored to the user's reference**. At least one option should stay close to the reference's visual style (e.g., "贴近参考" / "Reference-Faithful"). Other options should offer deliberate variations — modernize, warm up, simplify, or add personality — while still using the reference as the starting point. Do NOT propose options that completely ignore the reference.

**Direction diversity requirement (CRITICAL)**: each direction must have its own **color identity and emotional character** — this is the PRIMARY differentiator. Directions should feel like completely different visual worlds, not lightness variants of the same palette. Anti-pattern (the #1 failure mode): organizing directions along the lightness axis — "one bright, one dark, one warm." Lightness follows from the color identity, not the other way around. Good differentiators: different accent hue families (coral vs emerald vs gold), different emotional registers (playful vs precise vs poetic), different material/texture feels (glossy metal vs raw ceramic vs crisp paper). If you catch yourself generating lightness variants instead of genuinely different color identities, start over.

**Diversity enforcement (HARD constraint)**: before emitting cards, silently classify each direction along `Layout Vibe` (EDITORIAL | UTILITY | [HYBRID]), `Corner Philosophy` (SHARP | SOFT | [SPATIAL]), `Accent Temperature` (WARM | COOL | [NEUTRAL] | CHROMATIC), and `Depth Strategy` (FLAT | [LAYERED] | IMMERSIVE). Then verify: (1) any two directions differ on ≥ 3 of the dimensions; (2) at least one direction is a pure-extreme combination (no bracketed values); (3) no bracketed middle value appears in more than one direction. These classifications are not user-facing card content and must never be printed as headings, checklists, tables, raw enum strings, or verification notes.

**IA-Visual Coupling (CRITICAL)**: each direction commits to an information architecture and layout philosophy that belong to its visual world — not just colors on top of a generic page list. Different directions imply different Pages and Layouts (an editorial direction may collapse navigation into a single-column scroll; a utility direction may split into nav + content + detail panes). Anti-pattern: three directions sharing the same Pages and Layout values, differing only in color and texture. The `Pages` and `Layout` fields are also the seed for the downstream wireframe — they are not decorative.

**Navigation shell selection (mobile/app — CRITICAL)**: when the platform is mobile/app, each direction must declare its **navigation shell** — `TabBar` (3-5 peer destinations) / `Stack` (drill-in) / `Hub` (launcher of tiles) / `Single-view` (one focused surface + sheets) / `Feed` (full-screen gesture cards) — coherent with its Layout Vibe and the product's real flow. Do NOT default every app to a bottom TabBar; a 5-tab bar is earned only by 3-5 genuinely peer destinations. See `write-mobile` "Navigation Shell Decision" for the implementation recipes. Across the 2-3 proposed directions the shell SHOULD vary where the product reasonably supports it.

**APP UI Language Architecture (APP/Mobile)**: before choosing colors, material, or motion for an app, map the product to a primary UI language and at most one secondary UI language. This is an architecture layer, not a style label. Decide from the core use mode: consume, operate, create, monitor, transact, record, socialize, or ritualize.

- Primary UI language examples: `media-first / player`, `feed / stream`, `utility / workbench`, `dashboard / command center`, `canvas / workspace`, `commerce / catalog`, `conversation / messaging`, `native / ritual flow`, `spatial / immersive`, `editorial / brand front`. The list is a vocabulary, not a menu to rotate blindly.
- Secondary UI language is optional and scoped. Example: a music app can be primary `media-first / player` with secondary `feed / stream`; settings remain native/utility instead of inheriting the player treatment.
- Break the decision into `layout language` (page structure), `content language` (what users scan first), `interaction language` (tap/gesture/command/creation), and `material language` (flat/glass/tactile/paper/metal/3D). Optimize color, material, and motion after this mapping.
- The chosen language must say where the app is allowed to be expressive and where it stays quiet. It should prevent both template bento/editorial defaults and over-styled routine controls.

**Wait for user selection before continuing.**

---

## Step 2: Insight Discovery (Brand-First, NOT Industry-First) — Innovation Track Only

**Convention Track: skip this step. Your visual direction comes from the established design system selected in Style Direction Confirmation.**

**WARNING: Avoid industry stereotypes from the start.**

Before any visual decisions, deeply understand:

1. **What is the BRAND personality?** (NOT the industry category)
2. **What emotional response should users feel?** (NOT what they "expect")
3. **How is this DIFFERENT from competitors?** (NOT how it's similar)
4. **Who is the target user?** (Be specific: age, lifestyle, values)

**Output:** 3-5 Feeling Keywords in the user's language.

**Lazy Examples (AVOID):**
- Food app: "Delicious", "Warm", "Appetizing" — Too obvious, leads to Orange palette
- Pet app: "Cute", "Fun", "Lively" — Too generic, leads to cliche design

**Brand-First Examples:**
- Premium pet nutrition brand: "Scientific", "Precise", "Health Guardian" — Minimal white, clean typography
- Late-night comfort food delivery: "Healing", "Solitude", "Gentle" — Warm neutrals, soft shadows
- Gen-Z finance app: "Fearless", "Playful", "Control" — Bold colors, casual voice

---

## Step 3: Brand-Driven Methodology — Innovation Track Only

**Convention Track: skip this step.**

Pick ONE methodology that fits the brand from Step 2's feeling keywords. Material Metaphor is one well-documented path; it is NOT the only valid Innovation Track approach. Treat the choice of methodology as itself a design decision driven by the brand, not a default.

**Methodology options:**

- **Material Metaphor** — translate brand feeling into a physical material + environmental setting, then derive visual physics (lighting / depth / edge treatment) from those choices. Best fit: products where tactile premium feel is a core differentiator. **Read `references/material-metaphor.md` for the complete methodology.**
- **Archetype-driven** — anchor the design to a character archetype (the Magician, the Outlaw, the Caregiver, the Explorer, etc.) and let archetype semantics drive color / typography / motion choices. Best fit: lifestyle, branded entertainment, products with strong narrative voice.
- **Narrative-driven** — design around one concrete scene the user is imagined to occupy (e.g., "a late-night kitchen on a rainy weekday"). Visual properties resolve from the scene's light, sound, materials, and emotional register. Best fit: emotional-utility products (journaling, recovery, mindfulness).
- **Cultural-semiotic** — root the visual language in a specific movement or cultural reference (Bauhaus, Japanese minimalism, Memphis, brutalist editorial, etc.) and translate its grammar into the product. Best fit: products targeting culturally literate audiences where the reference is the differentiator.

Other methodologies are acceptable when grounded in research. The four above are starting templates, not an exhaustive menu.

**This is an internal decision step — do NOT present methodology sub-options to the user. Do NOT ask for further selection. Choose the methodology yourself based on the feeling keywords and proceed directly.**

**Methodology Brief Deliverable** (output structure varies by methodology; for Material Metaphor specifically):
- **Base Material** (e.g., Glass, Paper, Liquid Metal, Fabric, or invent your own)
- **Environmental Setting** (e.g., California beach, Nordic winter, Warm library, or invent your own)
- **Physics Rules** derived from the material:
  - Lighting Logic (point light, ambient/diffused, inner glow, no shadow)
  - Depth Expression (drop shadow, blur, opacity layers, border only)
  - Edge Treatment (sharp 0px, subtle 4-8px, soft 12-20px, full round 50%)

For other methodologies, the Brief carries equivalent fields adapted to that methodology's vocabulary (archetype name + archetype's signature visual properties; scene + scene-derived properties; cultural movement + movement-derived properties).

**Anti-anchor**: do NOT default to "Brushed Steel x Nordic Winter" or any other recurring material/environment pairing. The reference file's tables are starting points, NOT a selection menu. Invent new materials/environments specific to the brand when the listed ones don't fit.

---

## Step 4: Design Tokens

**Read `references/visual-tokens.md` for complete token structure.**

**Key categories**: Color Roles (Primary 8-12% surface, Secondary, Background, Surface, Text, Semantic), Typography (Display, Title, Body, Caption, Label), Spacing (4px/8px base), Shadows (1-5 levels)

**Reference Images as Palette Source**: Extract and adapt color schemes from reference images. User-provided references take priority.

**Image Asset Rules**: Define whether each meaningful image comes from user-provided assets, official/source-owned assets, websearch/image search, Dribbble/Behance-style design artwork, Unsplash/Pexels/Wikimedia-style real photography, product screenshots, generated bitmap assets, or user/content data. Images must reveal the actual subject and support the product's information architecture; they are content, not decoration. Avoid dark blurred stock backgrounds, abstract mesh placeholders, generic laptop mockups, and product cards with fake gray boxes.

**Color Depth Rules**:
- Primary/Accent instantly recognizable, high contrast, logo-worthy
- Background is atmosphere (use `#FAF8F5`, `#F5F5F7`, `#1A1A1B`, not pure black/white)
- Surface layers use hue shift, not just brightness (depth through color temperature)
- Avoid one-note palettes: the finished UI must not be dominated by a single dominant hue family or read as a preset theme. Beige/cream/sand/tan, dark blue/slate, and brown/orange/espresso are not banned; they fail only when used as unchallenged whole-interface defaults. If the product/reference earns that direction, add a counter-hue, neutral temperature shift, or material contrast before finalizing.

**Mobile App Color Operating Model (APP/Mobile)**:
- Industry defaults are challenged, not banned. Food can use orange, finance can use blue, health can use blue-white, sleep can use purple/deep blue — but only after the brand, audience, and reference justify it. If the reason is "that industry uses this color," change it.
- Fluorescent green, generic blue, and Claude orange are valid accent choices when used with restraint. They fail when they become repeated APP active/accent defaults. If you use one, derive the reason from brand/reference, tune saturation, pair it with a supporting hue, and do not repeat them by habit across unrelated products.
- Use 60/30/10 for APP screens: 60% base/background, 30% surface/supporting color, 10% accent/interactive emphasis. The accent can appear as small tonal surfaces, icons, progress, and selected states — not as a neon wash.
- Apply a saturation budget: base low chroma, supporting color low-to-medium chroma, accent medium chroma, high saturation reserved for peak moments such as success, rewards, or urgent status.
- Tonal active states must use color + shape/weight/indicator, not hue alone: selected tabs can combine an 8-12% tint pill, icon/label weight shift, and a small indicator instead of a bright active icon.

**APP Material Fidelity (APP/Mobile)**:
- Base UI components stay restrained: navigation, settings rows, forms, and routine buttons should remain stable, readable, and low-noise. Restraint does NOT mean flat or material-less.
- Put expressive surfaces on the product's high-value moments: player controls, album cards, feed cards, cover art, media scrubbers, bottom sheets, hero controls, or other signature interactions. These surfaces can be translucent, rounded, dimensional, tactile, or skeuomorphic when the product earns it.
- Material decisions must be implementable, not just adjectives. Name the surface material, translucency/opacity, blur, rim highlight, bevel, shadow stack, luster/noise, and pressed/lifted states that make the component feel real.
- Use CSS/Tailwind tokens first for glass, acrylic, paper, ceramic, soft rubber, metal, and elevated card materials. Use generated or sourced images for content assets and hard-to-code textures such as album art, vinyl grooves, paper grain, ticket stock, or cassette labels.
- Three.js is allowed for high-value components, not only full-screen scenes. Use it when the component needs real geometry, perspective, reflection, inertia, or 3D rotation: a rotating play button, vinyl disc, knob, capsule switch, album sleeve, or sculptural CTA. Keep an accessible DOM control and a canvas fallback so the interface remains usable if WebGL fails.

**Texture & Depth ("Secret Sauce")**: Noise/Grain overlays, Glass/Blur (`backdrop-blur`), Inner Shadows, Subtle Gradients, 1px borders with opacity

**Micro-Detail Polish (Innovation Track)**: Surface Luster (highlight reflections), Tactile Depth (multi-layer shadows), Ambient Warmth (5-10% cross-temperature color)

Convention Track derives equivalent polish from reference system patterns.

---

## Step 5: Component Recipes

**Read `references/component-recipe.md` for 8-state interaction model and Tailwind class composition.**

**CRITICAL:** Define components as **atomic Tailwind class strings**, not text descriptions.

**Convention Track**: Replicate reference system patterns faithfully (border radius, shadow depth, color usage, hover states).

**Innovation Track**: Translate Feeling Keywords and the chosen methodology brief (Material Metaphor / archetype / narrative / cultural-semiotic) into visual code. How does the methodology's core abstraction affect `shadow`/`border`/`bg`/`ring`? Capture the vibe in the code.

**8-State Model**: Default, Hover, Active, Focus, Disabled, Loading, Success, Error. Account for all relevant states.

**Required Output**: Tailwind classes for Container/Card, Primary Button, Input Field, Navigation Item, Badge/Tag.

See `references/component-recipe.md` for detailed examples.

---

## Step 6: Motion & Behavior

**Read `references/motion-system.md` for complete motion system.**

**Motion Purpose Test**: Does this animation serve Feedback, Guidance, Continuity, or Brand Expression? If no, remove it.

**Worth-It Test**: "Would you spend a week hand-coding this? If no, don't include it."

**Friction/Damping**:
- Convention Track: standard easing (ease-out for entrances, ease-in for exits)
- Innovation Track: derive from the chosen methodology. For Material Metaphor, friction maps from the base material (Glass/Metal = low friction, Paper/Fabric = medium, Water/Mist = high damping). For archetype-driven, friction maps from the archetype's energy register. For narrative-driven, friction maps from the scene's pace. For cultural-semiotic, friction follows the movement's motion vocabulary.

**Spring Physics Over Fixed Curves**: Button Press (`scale: 0.98`, `stiffness: 400`, `damping: 10`), Modal Open (`y: 0`, `opacity: 1`, `stiffness: 250`, `damping: 25`), Hover (`y: -2`, `stiffness: 300`, `damping: 15`)

**Motion Polish**: Tactile button feedback (`active:scale-[0.98]`), staggered delays (30-50ms), ease-out/spring physics (never linear)

See `references/motion-system.md` for complete specifications.

---

## Step 7: Layout Requirements

**Grid System**: 12-column or 8pt spacing system. All components, gutters, margins multiples of 8px.

**Device Adaptability**: Flexible grids and breakpoints for all screen sizes (desktop, tablet, mobile).

**Modular Construction**: Organize functional blocks into distinct modules. Column-based layouts for visual balance.

**Negative Space & Rhythm**:
- Macro-Whitespace: 64-120px vertical spacing between sections
- Micro-Whitespace: Generous internal padding (content never touches borders)

**Breathing Room**: Low information density. Whitespace guides focus to primary CTA/key data.

---

## Step 8: Design Specs Output

Produce complete specification:
1. Design Principles and Layout Requirements
2. Color Palette (hex codes + usage rules)
3. Typography System (families, sizes, weights, line heights)
4. Spacing Scale
5. Component Specifications (all states, Tailwind classes)
6. Animation Guidelines (spring physics parameters)
7. Real Image / Asset Requirements (source type, subject, crop, alt text, fallback behavior)
8. Icon Guidelines (same library, same style, same stroke weight 1.5-2px, 24x24 grid)
9. Recommended Libraries

**Quality Gate**: Before delivery, read `references/design-audit.md` and apply all quality checks. Address issues before presenting to user.

## Post-Completion: What Happens After `generate_visual_dna`

**This section applies to the main agent's orchestration context only.** Sub-agents (`design-dna`, `visual-direction`) do not own the post-DNA flow -- they return to the caller after `generate_visual_dna` completes.

**Main agent rule — do NOT ask for confirmation after visual DNA generation.** The post-visual-DNA flow is **non-interactive**: the main agent tells the user the visual specs are set and immediately proceeds to call `save_final_prd` (PRD) first, then `write_code(initial_single_page)` (preview page) — in that order, same turn, no text output between the two calls. Do NOT output a question like "需要先出一个核心页面看看整体感觉吗？" or "产品简报已保存...要继续吗？" — both calls are mandatory and uninterruptible.

---

## Style Guardrails (Global)

**Read `references/anti-patterns.md` (MANDATORY) for complete list.**

### Hard Bans (Both Tracks)

**Banned combination patterns** (not individual colors — see `anti-patterns.md` for full list):
- Purple-blue, pink-cyan, or rainbow gradients (STRICTLY BANNED as AI-slop triggers)
- Unintentional, chaotic use of multiple high-saturation accents
- One-note palettes where background, surfaces, accent, and illustration all sit in the same dominant hue family. This includes default beige/cream/sand/tan lifestyle themes, dark blue/slate SaaS themes, and brown/orange/espresso coffee themes when not specifically justified by the brand or reference; those families are usable when intentionally composed, not banned as colors.

**Dark Mode Backgrounds**: any dark background without purple tint (hue 260-300, saturation > 10%). Vary color temperature — neutral, warm, cool, or tinted darks are all acceptable. **Pure black (#000000)** is allowed for modern genres like Neo-brutalism or Spatial UI.

**Do NOT use default Tailwind color names** — specify exact hex codes.

**Quality Standards**: Icons (same library, same style, same stroke weight 1.5-2px, 24x24 grid), Contrast (text/background >= 4.5:1), Body text (>= 14sp), Brand color (8-12% surface, EXEMPT: >30% allowed in Neo-brutalism/Marketing)

**Real Image Standard**: If the UI shows imagery, it must be real or credibly subject-specific. Product, listing, venue, food, travel, profile, media, portfolio, and hero imagery must depict the actual object/state/person/place/category being represented. Use purposeful crops, visible focal points, and alt text. If credible imagery cannot be sourced or generated, remove the image slot instead of filling it with placeholder art.

### Soft Guidelines (Both Tracks)

Acceptable when serving visual direction: Subtle gradients (backgrounds, not buttons), Glassmorphism (when reinforcing Material Metaphor), Bold saturated accents (not neon). Any hue is acceptable as accent as long as it does not form a banned combination pattern.

### Industry Color Defaults (Both Tracks)

Industry defaults are challenged, not banned. Food=orange, tech=blue, eco=green, finance=blue/green, health=blue-white, and sleep=purple/deep blue are valid when they genuinely serve THIS product's brand. If you chose the hue because "that's what this industry does," find something better.

### Mobile App Color Operating Model (APP/Mobile)

On app screens, avoid AI slop active/accent defaults: fluorescent green, generic blue, and Claude orange are valid accent choices when used with restraint, but must not become the automatic selected tab, primary CTA, or progress color. Use the 60/30/10 distribution and a saturation budget instead: quiet base, distinct supporting hue, restrained accent, and high saturation only for peak feedback. Tonal active states should combine color + shape/weight/indicator so selection is readable without turning the app into a neon theme, and do not repeat them by habit across unrelated products.

**Reference Product Pool** (study for the RANGE of valid approaches — order is intentionally varied, do NOT lock to the first 2-3 names): Notion, Spotify, Arc, Things 3, Figma, Airbnb, Craft, Stripe, Telegram, Duolingo, Linear, Raycast, Bear, Superhuman, Vercel, Apple, GitHub, Todoist. When picking a reference for a given product, pick the one that genuinely fits the brief — do not default to whichever name comes first.

---
