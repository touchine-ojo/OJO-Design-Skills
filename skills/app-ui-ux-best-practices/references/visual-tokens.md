# Visual Design Tokens Reference

A structural guide for design tokens: tells you **which** variables to define, but does NOT preset **specific values**. Specific values must be translated by the model based on "Feeling Keywords" and the selected visual direction.

---

## Token Structure Checklist

### 1. Color System

Your design must define the following color roles:

| Role | Purpose | Surface Coverage | Contrast Requirement |
|------|---------|------------------|---------------------|
| `primary` | Primary buttons, key emphasis | 8-12% (EXEMPT: >30% allowed in Neo-brutalism/Acid) | 4.5:1 on background |
| `secondary` | Secondary actions, tags | 3-5% | 3:1 on background |
| `background` | Page base color | 60-70% | N/A |
| `surface` | Cards, containers, elevated elements | 20-30% | Distinguishable from background |
| `text-primary` | Body text, headings | N/A | 4.5:1 on background |
| `text-secondary` | Helper text, captions | N/A | 3:1 on background |
| `text-disabled` | Disabled state text | N/A | 2:1 on background |
| `border` | Borders, dividers, outlines | N/A | Subtle but visible |
| `success` | Success states, confirmations | Variable | Green family |
| `warning` | Warning states, alerts | Variable | Yellow/Orange family |
| `error` | Error states, destructive actions | Variable | Red family |

#### Color Depth Rules (CRITICAL)

**Primary/Accent Colors:**
- Must be instantly recognizable on gray backgrounds -- not "another gray"
- Sufficient contrast with background colors (not muddy or washed out)
- Should feel like a brand color with personality -- imaginable on a logo
- Avoid trending AI-generated palettes (see banned list below)

**Background as Atmosphere:**
Backgrounds create mood, not just fill space. Avoid pure black/white in standard SaaS, but **embrace them** in high-contrast modern genres:
- Warm white: #FAF8F5, #FBF9F6 (Standard)
- Cool gray: #F5F5F7, #F8F8F8 (Standard)
- Deep charcoal: #1A1A1B, #18181B (Standard)
- Warm dark: #1C1917 (stone-900), #292524 (stone-800)
- **Pure Black (#000000) / Pure White (#FFFFFF)**: Allowed and encouraged for Neo-brutalism, Editorial, and high-impact marketing pages.

**Background Temperature & Mode Diversity (CRITICAL — counter dark-default convergence):**
Do NOT default every product to a near-black surface. Pick a background **mode AND temperature** from the product's mood:
- **Light** — Warm white `hsl(30-45, 20-50%, 93-97%)` / Cool white `hsl(200-220, 15-40%, 95-98%)` / Neutral white `hsl(0, 0-5%, 96-98%)` / tinted (blush, sage, cream)
- **Dark** — neutral / warm / cool / tinted (see Dark Mode Backgrounds below)

**WARNING — dark-mode convergence:** AI agents over-default to near-black "premium dark glass" surfaces, so unrelated apps end up looking like the same dark app. When the product's mood does not specifically call for dark (many utility, lifestyle, productivity, and light-editorial products read better light), choose a light or tinted background. The goal is mode/temperature diversity across consecutive designs.

**WARNING — one-note palettes:** Do not let the entire UI collapse into one dominant hue family. A palette that is all beige/cream/sand/tan, all dark blue/slate, or all brown/orange/espresso reads as a preset theme unless the product/reference explicitly earns it. Add a counter-hue accent, neutral temperature shift, or material contrast so the palette has a memorable color relationship instead of a single mood wash.

**Mobile App Color Operating Model (APP/Mobile):**
Industry defaults are challenged, not banned. Food can use orange, finance can use blue, health can use blue-white, and sleep can use purple/deep blue when the product or reference earns it; the failure is adopting the industry color as an automatic answer. Fluorescent green, generic blue, and Claude orange are valid accent choices when used with restraint. They fail when selected tabs, primary CTAs, or progress accents repeat them by habit instead of deriving them from the brand/reference and surrounding palette.

Use 60/30/10 as the app color distribution:
- **60% base** — background and main reading surface, low chroma, stable temperature.
- **30% support** — cards, grouped sections, secondary surfaces, or a quiet complementary hue.
- **10% accent** — primary action, active navigation, progress, badges, and peak feedback.

Apply a saturation budget before writing tokens: base low saturation, support low-to-medium saturation, accent medium saturation, high saturation only for success, reward, urgency, or another short-lived peak moment. If every active icon is fully saturated, the palette has failed even when the hue is not on a banned list. Do not repeat them by habit: when a recent design used generic blue or Claude orange as its active color, pick a different relationship unless this product earns the same hue.

**Tonal Active States:** selected/active controls should use color + shape/weight/indicator. Prefer an 8-12% tint pill or bar plus icon/label weight changes over a bare neon icon. A good mobile tab state is readable in grayscale and still gains brand character from the tint.

**Surface Layer Hue Shift:**
Surface layers should use subtle hue shifts, not just brightness changes:
- Card on #1A1A1B background should be #232325 (slightly warmer, not just lighter)
- Card on #FAF8F5 should be #FFFFFF or #F5F3F0 (subtle temperature shift)

**Reference Images as Palette Source:**
Extract and adapt colors from direction reference images. User-provided images take priority over system suggestions.

**OKLCH Color Space (Recommended for reasoning only):**
Use OKLCH for reasoning, not as a persisted `theme.json` value. OKLCH ensures consistent lightness across hues while selecting the palette, but the current Tailwind v3.4 pipeline expects runtime-compatible token values. Emit hex or HSL channel triplets for `theme.json`; do not persist `oklch()` strings.

**OKLCH Implementation Guide:**

OKLCH uses three channels: lightness (0-100%), chroma (0-0.4+), hue (0-360).

```css
/* OKLCH reasoning converts to persisted HSL channel triplets */
--color-primary: 220 63% 48%;
--color-primary-light: 220 58% 82%;
--color-primary-dark: 220 54% 28%;
```

Key rule: as you move toward white or black, **reduce chroma**. High chroma at extreme lightness looks garish. A light tint at 85% lightness needs ~0.08 chroma, not the 0.15 of the base.

**Tinted Neutrals (CRITICAL for cohesion):**
Pure gray has no personality. Add a tiny hint of brand hue to all neutrals (chroma 0.01-0.02):

```css
/* Dead grays -- avoid */
--gray-100: 0 0% 95%;
--gray-900: 0 0% 15%;

/* Warm-tinted grays (add brand warmth) */
--gray-100: 42 18% 95%;
--gray-900: 36 7% 15%;

/* Cool-tinted grays (tech, professional) */
--gray-100: 210 16% 95%;
--gray-900: 215 9% 15%;
```

The chroma is tiny (0.01) but perceptible. It creates subconscious cohesion between brand color and UI.

**Palette Generation with `color-mix()`:**
Use `color-mix()` for derived shades instead of manually picking every value:

```css
--color-primary-hover: color-mix(in oklch, var(--color-primary), white 15%);
--color-primary-active: color-mix(in oklch, var(--color-primary), black 15%);
```

**Alpha and Transparency (Context-Dependent):**
In standard SaaS, heavy use of transparency (rgba, hsla) can mean an incomplete palette. However, in **Spatial UI and modern layered designs**, alpha channels are the core building block. Use explicit overlay colors for flat designs, but embrace `backdrop-blur` and multi-layered alpha for Spatial/Glassmorphism aesthetics.

#### Color Construction Methodology

Six methods for building harmonious palettes. Cross-reference with `color-palette-library.md` for real-world examples of each method.

| Method | Definition | Character | Example Palettes (from library) |
|--------|-----------|-----------|-------------------------------|
| **Monochromatic** | Same hue, varying lightness/saturation | Calm, unified, brand-centric | Dark Taupe, Linen Warm, Forest Dew |
| **Analogous** | Adjacent 30-60 degrees on color wheel | Harmonious, natural, editorial | Navy Sage, Ember Gold, Olive Trail |
| **Complementary** | Opposite 180 degrees on color wheel | High-contrast, energetic, call-to-action | Mint Rose, Sakura Teal, Teal Bronze |
| **Split-Complementary** | Primary + two colors flanking its complement | Vibrant but balanced, creative | Sky Blush, Clay Garden, Dusty Violet |
| **Triadic** | Equidistant 120 degrees on color wheel | Playful, diverse, bold | Candy Pop |
| **Warm/Cool Contrast** | Warm-dominant + cool accent or vice versa | Tension, temperature depth, modern | Steel Cream, Arctic Dawn, Copper Night |

When selecting a method, derive from the product's register dials, not from a taste default. Monochromatic suits utility products and quiet registers. Complementary and triadic carry energy for consumer and loud registers. Warm/cool contrast builds tension for both polished-premium and raw-industrial directions — the method is register-neutral; the saturation budget and finish decide the character.

**WARNING — Warm-tone convergence:** AI agents overwhelmingly default to amber/gold/orange/terracotta accents (hue 15-50). When no explicit warm guidance exists from the user, actively consider cool alternatives: teal (hue 170-195), olive (hue 80-130), slate blue (hue 200-220). The goal is diversity across consecutive designs, not replacing blurple-bias with amber-bias.

### 2. Typography System

Font roles to define:

| Role | Purpose | Size Range | Weight Range | Line Height | Letter Spacing |
|------|---------|-----------|--------------|-------------|----------------|
| `display` | Hero headlines, landing page titles | 48-72px | 700-900 | 1.0-1.1 | -0.02em to -0.01em |
| `h1` | Page titles | 36-40px | 600-800 | 1.1-1.2 | -0.01em |
| `h2` | Section headers | 28-32px | 600-700 | 1.2-1.3 | 0em |
| `h3` | Subsection headers | 20-24px | 500-600 | 1.3-1.4 | 0em |
| `body` | Body text (minimum 14px) | 16px | 400-500 | 1.5-1.7 | 0em |
| `caption` | Helper text, labels, metadata | 12-14px | 400-500 | 1.4-1.5 | 0.01em to 0.02em |

#### Typography Rules

**Hierarchy Through Variation:**
- Vary both weight AND letter-spacing to create hierarchy with personality
- Display/headlines: tighter letter-spacing
- Body: normal letter-spacing
- Captions/labels: slightly wider letter-spacing

**Readability:**
- Body text: generous line-height (1.5-1.7), comfortable measure (60-75 characters per line)
- Minimum body text size: 14px (16px preferred)
- **Font sourcing (split by script)**:
  - **Latin / non-CJK families** MUST come from Google Fonts (https://fonts.google.com/). Load at most 2 Latin families (one display + one body/UI) via the Google Fonts CDN. Never invent Latin font names, never use local-only Latin fonts, never use Latin families from other services (Fontshare, Adobe Fonts, etc.).
  - **CJK families (Simplified Chinese, Traditional Chinese, Japanese, Korean)** MUST come from **emfont** (https://font.emtech.cc) via the **`emfont-fonts` skill** — load at most 1 CJK family (a 2nd allowed only with explicit brand justification). The legacy "use Noto Sans SC / TC / JP / KR from Google Fonts" rule is **abandoned**; all of `Noto Sans SC / TC / JP / KR / HK`, `Noto Serif SC / TC / JP / KR`, `Source Han *`, `LXGW WenKai`, `ZCOOL XiaoWei`, `Long Cang`, `Ma Shan Zheng` and any other CJK family hosted on Google Fonts are FORBIDDEN. System CJK families (`PingFang SC`, `Microsoft YaHei`, `Hiragino Sans`, `Meiryo`) MAY appear only as the system fallback AFTER the emfont family in the `font-family` stack — never as the primary.

**Numeric Data:**
- Use `tabular-nums` (font-variant-numeric: tabular-nums) for all numeric data, tables, and dashboards

**Hierarchy Discipline:**
- Maximum 3 distinct typographic styles above the fold (EXEMPT: Editorial/Magazine layouts may mix multiple typefaces intentionally for artistic contrast)
- If you need a 4th style in standard UI, reconsider the information architecture
- LLMs tend to add extra label layers that break hierarchy -- resist this

#### Typography Scale Modes

Different products need different typographic intensity. Select a mode based on the visual direction — a Compact utility app is a first-class choice, NOT a watered-down Editorial one.

| Mode | Display | H1 | H2 | Body | Character |
|------|---------|----|----|------|-----------|
| **Compact** | 36-48px | 24-28px | 18-20px | 14-16px | Dense information, utility apps, dashboards |
| **Editorial** | 64-96px | 36-48px | 24-32px | 16-18px | Magazine feel, content platforms, marketing |
| **Dramatic** | 96-144px | 48-72px | 28-36px | 16-18px | Hero-driven, bold statements, creative agencies |

The size ranges in the role table above represent the **Editorial** default. Adjust to Compact for data-heavy products or Dramatic for hero-driven marketing pages.

### 3. Spacing System

Choose a base unit of **4px** or **8px**, then define multiplier scale.

| Multiplier | 4px Base | 8px Base | Use Case |
|-----------|----------|----------|----------|
| 0.5x | 2px | 4px | Micro gaps |
| 1x | 4px | 8px | Tight spacing |
| 1.5x | 6px | 12px | Compact |
| 2x | 8px | 16px | Standard |
| 3x | 12px | 24px | Comfortable |
| 4x | 16px | 32px | Section gaps |
| 6x | 24px | 48px | Large sections |
| 8x | 32px | 64px | Major sections |
| 12x | 48px | 96px | Macro whitespace |
| 16x | 64px | 128px | Page sections |

**Macro Whitespace (Section Separation) — take from the `Density` dial:** Sparse register 64-120px between major sections; Standard 32-64px; Dense/poster register 8-32px with intentional overlaps and edge-to-edge bleeds allowed. Do not apply the sparse value as a universal default.

**Micro Whitespace (Content Padding):** In sparse/standard registers, content must not touch container borders — minimum 16px padding on interactive elements, minimum 8px gap between related items. In dense-poster register, full-bleed and touching edges are legitimate compositional moves, but tap targets must still meet the 44px minimum and text must stay clear of clipping.

### 4. Border Radius System

Define border radius for:
- Buttons (typically 6-12px)
- Cards (typically 8-16px)
- Input fields (match buttons)
- Avatars/Badges (full round or 50%)

### 5. Shadow System

Define 3-5 elevation levels:

| Level | Purpose | Shadow Characteristics |
|-------|---------|----------------------|
| Level 0 (Flat) | Background/surface elements | No shadow |
| Level 1 (Raised) | Cards, buttons | Subtle: 0 1px 3px |
| Level 2 (Elevated) | Dropdowns, popovers | Medium: 0 3px 6px |
| Level 3 (Floating) | Modals, overlays | Strong: 0 10px 20px |
| Level 4 (Lifting) | Critical overlays (optional) | Maximum: 0 15px 25px |

**Shadow Color:**
- Dark mode: use rgba(0,0,0,0.3-0.6)
- Light mode: use rgba(0,0,0,0.1-0.2)
- Consider colored shadows for brand emphasis (primary color with 0.1-0.2 opacity)

### 6. Texture and Depth (The "Secret Sauce")

High-fidelity rendering details that separate good design from great design. Define these explicitly:

**Noise/Grain:** Subtle texture overlays for organic feel. 2-5% opacity on backgrounds and surfaces.

**Glass/Blur:** backdrop-blur for depth and layering. 8-16px blur for frosted glass effect. Combine with semi-transparent backgrounds.

**Inner Shadows:** Tactile feel for buttons and input fields. Example: inset 0 1px 2px rgba(0,0,0,0.1).

**Gradients:** Subtle, non-intrusive surface richness. Linear gradients with 5-10% color variation. Avoid harsh stops.

**Borders:** 1px borders with subtle opacity for crisp edges. rgba(0,0,0,0.1) in light mode, rgba(255,255,255,0.1) in dark mode.

The recipes above (subtle noise, frosted glass, soft gradients) serve polished registers. Raw registers get their own texture vocabulary — equally explicit, equally engineered:

**Raw Register Textures (take from the `Finish` dial):**
- **Heavy Grain/Halftone:** 10-25% opacity noise or halftone-dot overlays; visible, not subliminal. CSS `background-image` with SVG noise/dot patterns.
- **Photocopy/Overprint:** misregistered color layers (duplicate element with 2-4px offset and `mix-blend-mode: multiply`), ink-bleed edges, streak artifacts.
- **Torn/Cut Edges:** irregular `clip-path` polygons or mask images instead of rounded corners; deckled or ripped borders on cards and images.
- **Hard Borders & Offset Shadows:** `border-2 border-black`, `shadow-[4px_4px_0_#000]` — solid, unblurred, directional.
- **Tape/Staple/Sticker Fixings:** small rotated pseudo-elements pinning collage items; deliberate 1-3deg rotations on a rigid underlying grid.

**Polished Register Finishing (Innovation Track):**
- **Surface Luster:** Highlight reflections on top edges. Subtle white gradient at 5-10% opacity.
- **Tactile Depth:** Multi-layer shadows for physical realism. Combine outer shadow with inner shadow.
- **Ambient Warmth:** 5-10% cross-temperature color injection. Add warm hue to cool surfaces, cool hue to warm surfaces.

---

## Non-Negotiable Rules

### Contrast Requirements (WCAG AA)

| Element | Minimum Contrast |
|---------|-----------------|
| Body text | 4.5:1 |
| Large text (18pt+) | 3:1 |
| UI components | 3:1 |

### Banned Color Patterns (Anti-Pattern)

**Banned combination patterns** (see `anti-patterns.md` for full list):
- Purple/violet primary on dark background
- Blue + Purple as primary + secondary
- Pink to Cyan gradients
- High-contrast gradient buttons (purple-blue, rainbow)
- Multiple high-saturation accents + glow/blur combined
- Any "cyberpunk" palette

**Banned dark backgrounds** (purple-tinted or pure black in standard SaaS):
- `#0D0B1A`, `#0F0E17`, `#13111C` (purple-black)
- `#1A1625`, `#1E1B2E`, `#2D2640` (purple-tinted)
- `#000000` (pure black - EXEMPT: Allowed in Neo-brutalism/Editorial)

**Individual colors are not banned.** Any hue is acceptable as accent — the restriction is on AI-slop combination patterns, not on the color wheel itself. See `anti-patterns.md` for the self-check test.

### Dark Mode Backgrounds

Any dark background without purple tint is acceptable. Vary color temperature based on the visual direction:
- Neutral: `#18181B` (zinc), `#1A1A1A` (neutral)
- Warm: `#1C1917` (stone), `#1F1B18` (brown-tinted)
- Cool: `#181B20` (slate), `#1B1D22` (blue-grey)
- Tinted: `#181B19` (green-tinted), `#1A1919` (warm charcoal)
- High-Contrast: `#000000` (pure black, for Neo-brutalism/Spatial)

---

## Important Note

This file provides **structure only**. Specific color values, font choices, border radius sizes, etc. must be translated by the model based on the selected visual direction.

**Do NOT** copy any values directly from here. **DO** create based on feeling and reference images.

**Font Source (MANDATORY — split by script)**:
- **Latin / non-CJK families** MUST come from Google Fonts (https://fonts.google.com/). Never invent names, never use local-only or non-Google-Fonts services for Latin.
- **CJK families (Simplified Chinese, Traditional Chinese, Japanese, Korean)** MUST come from **emfont** (https://font.emtech.cc) via the **`emfont-fonts` skill**. Google Fonts CJK families (`Noto Sans SC / TC / JP / KR`, `Noto Serif SC / TC / JP / KR`, `Source Han *`, `LXGW WenKai`, `ZCOOL XiaoWei`, `Long Cang`, `Ma Shan Zheng`, etc.) are FORBIDDEN. System CJK families (`PingFang SC`, `Microsoft YaHei`, `Hiragino Sans`, `Meiryo`, etc.) are allowed ONLY as fallbacks after the emfont family.
