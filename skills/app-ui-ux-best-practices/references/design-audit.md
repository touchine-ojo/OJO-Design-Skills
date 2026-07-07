# Design Audit Reference

Quality gate reference for comprehensive design review. The final checkpoint before shipping.

---

## Audit Overview

Design audit operates in **documentation mode**: finds and reports issues with severity levels, then recommends which skill/reference to use for fixes.

### Severity Levels

**Critical (Must Fix):**
- Blocks shipping
- 3+ AI detection traits
- Failed text contrast
- Broken keyboard navigation
- Non-functional core interactions

**High Priority:**
- Should fix before shipping
- 2+ interaction failures
- Visual inconsistency between sections
- Missing focus indicators
- Poor mobile responsiveness

**Medium Priority:**
- Fix if time permits
- Single interaction issue
- Typography hierarchy unclear
- Missing hover states
- Performance optimization needed

**Low Priority:**
- Polish items
- Minor spacing inconsistencies
- Secondary content clarity
- Animation refinement
- Micro-interaction polish

---

## Audit 1: Visual Coherence

Evaluates color usage, visual hierarchy, and design token consistency.

### Checklist

**Accent Color Distinct:**
- [ ] Primary accent color is clearly distinguishable from neutral colors
- [ ] Accent color has sufficient contrast against all backgrounds
- [ ] Accent color is used consistently throughout interface
- [ ] Accent color is NOT purple/violet (AI detection)

**Primary Button Uses Accent:**
- [ ] Primary CTA buttons use the primary accent color
- [ ] Primary buttons are most visually prominent interactive element
- [ ] Secondary buttons are visually subordinate to primary
- [ ] Button hierarchy is immediately clear

**Dark Mode Layer Separation:**
- [ ] Background and surface colors are distinct (not same color)
- [ ] Three levels of elevation are clearly visible
- [ ] Borders or shadows create clear boundaries between layers
- [ ] Text is readable on all surface levels

**Accent Coverage:**
- [ ] Accent color appears in 8-12% of UI surface area (EXEMPT: >30% allowed in Neo-brutalism/Acid/Marketing)
- [ ] Not overused in standard SaaS (>15% coverage feels overwhelming)
- [ ] Not underused (<5% coverage feels bland)
- [ ] Strategic placement draws eye to key actions

### Common Issues

| Issue | Severity | Fix Reference |
|-------|----------|---------------|
| Purple primary color | Critical | visual-tokens.md (Banned Colors) |
| Accent overload (>15%) | High | design-refine.md (Color axis) |
| Weak layer separation | High | visual-tokens.md (Shadow System) |
| Inconsistent accent usage | Medium | design-tokens skill |

---

## Audit 2: Typography Quality

Evaluates text hierarchy, readability, and typographic standards.

### Checklist

**Body Text Size:**
- [ ] Body text is >= 14px (16px preferred)
- [ ] Never below 12px for any readable text
- [ ] Mobile text is >= 14px (prevents iOS zoom)
- [ ] Captions/labels are >= 11px

**Text Contrast:**
- [ ] Body text has >= 4.5:1 contrast ratio (WCAG AA)
- [ ] Large text (18pt+) has >= 3:1 contrast ratio
- [ ] Secondary text has >= 4.5:1 contrast (don't rely on lower standards)
- [ ] Text on colored backgrounds meets contrast requirements

**Max 3 Styles Above Fold (Context-Dependent):**
- [ ] No more than 3 distinct type styles in first viewport for standard UI
- [ ] Styles are: Heading, Body, and optionally Label/Caption
- [ ] NO: Overheading + Heading + Subheading + Label + Body + Caption (unless explicitly designing an Editorial/Magazine layout)
- [ ] Clear hierarchy without excessive variation

**Tabular Numbers for Data:**
- [ ] Numbers in tables use tabular-nums (font-variant-numeric)
- [ ] Prices, metrics, and data align vertically
- [ ] Monospace NOT used for all numbers (only code/technical)
- [ ] Financial data right-aligned with aligned decimals

### Common Issues

| Issue | Severity | Fix Reference |
|-------|----------|---------------|
| Body text < 14px | Critical | visual-tokens.md (Typography System) |
| Low contrast text | Critical | visual-tokens.md (Contrast Requirements) |
| 4+ type styles above fold | High | anti-patterns.md (AI Detection) - EXEMPT for Editorial |
| Missing tabular-nums | Medium | component-recipe.md |

---

## Audit 3: Interaction Completeness

Evaluates the 8-state model coverage, hover behavior, and tactile feedback.

### Checklist

**8-State Coverage:**
- [ ] All interactive elements have Default state
- [ ] All interactive elements have Hover state
- [ ] All interactive elements have Focus state (focus-visible)
- [ ] All interactive elements have Active state
- [ ] All interactive elements have Disabled state
- [ ] Forms have Loading state for async actions
- [ ] Form inputs have Error state
- [ ] Form inputs have Success state (optional)

**Hover Anti-Patterns Avoided:**
- [ ] No sibling fade-out on hover (hovering dims other items)
- [ ] No wrong-direction movement (element moves down/away)
- [ ] No layout shift on hover (dimensions change)
- [ ] Hover INCREASES visibility and clickability
- [ ] Hover moves toward user (up or forward in z-space)

**Tactile Button Feedback:**
- [ ] All buttons have active:scale-[0.98] or equivalent
- [ ] Buttons never feel "dead" or unresponsive
- [ ] Press feedback is immediate (50-100ms)
- [ ] Release returns to hover state if still hovering

**Focus-Visible Rings:**
- [ ] All interactive elements have visible focus indicators
- [ ] focus-visible: variant used (not focus:)
- [ ] Focus ring has sufficient contrast (3:1 minimum)
- [ ] Focus ring doesn't appear on mouse click (focus-visible prevents this)

### Common Issues

| Issue | Severity | Fix Reference |
|-------|----------|---------------|
| Missing focus indicators | Critical | component-recipe.md (Focus State) |
| Sibling fade-out hover | High | component-recipe.md (Hover Anti-Patterns) |
| No active state feedback | High | component-recipe.md (Active State) |
| Incomplete state coverage | Medium | component-recipe.md (8-State Model) |

---

## Audit 4: Motion Quality

Evaluates animation purpose, banned patterns, and accessibility compliance.

### Checklist

**Motion Purpose Test Passed:**
- [ ] Every animation serves Feedback, Guidance, Continuity, or Brand
- [ ] No decorative animations that fail purpose test
- [ ] Animations help users complete tasks, not hinder
- [ ] Animation duration is appropriate (<600ms)

**Worth-It Test Passed:**
- [ ] Would spend a week hand-coding each animation (if not, remove)
- [ ] No "free animation" syndrome (adding motion just because it's easy)
- [ ] Animations add meaningful value to UX
- [ ] Animation count is intentional, not excessive

**No Banned Patterns:**
- [ ] No fade-in on scroll for static content
- [ ] No scroll hijacking (native browser scroll only)
- [ ] No decorative scroll lines/paths
- [ ] No cursor-following elements
- [ ] No auto-advancing content without user control
- [ ] No animation that draws attention AWAY from content

**Reduced-Motion Support:**
- [ ] prefers-reduced-motion media query implemented
- [ ] Animations disabled or replaced with crossfade
- [ ] Content is accessible without animation
- [ ] No essential information conveyed through motion alone

### Common Issues

| Issue | Severity | Fix Reference |
|-------|----------|---------------|
| Fade-in on scroll | Critical | motion-system.md (Banned Patterns) |
| No reduced-motion support | Critical | motion-system.md (Reduced Motion) |
| Scroll hijacking | Critical | motion-system.md (Scroll Behavior) |
| Failed purpose test | High | motion-system.md (Motion Purpose Test) |

---

## Audit 5: Anti-AI Detection

The most critical audit. Detects AI-generated aesthetics that destroy credibility.

### Quick Detection (30 seconds)

Check these 5 traits first:

1. **Background color**: Is it purple-black (#0D0B1A, #1A1625)?
2. **Primary color treatment**: Is it AI-default purple/violet on dark (#A78BFA, #8B5CF6) without brand/reference justification?
3. **Glassmorphism**: Blur + glow border combination present?
4. **Gradient buttons**: Purple→blue or pink→cyan gradients?
5. **Overall vibe**: Sci-fi movie interface or real product?

**If 3+ traits match: STOP. Recommend DELETE AND RESTART.**

### Comprehensive Detection Checklist

**Color Signatures:**
- [ ] No deep purple/blue-black backgrounds
- [ ] No AI-default purple/violet primary on dark or purple-blue treatment
- [ ] No pink→cyan gradients
- [ ] No neon colors (#00FFFF, #FF00FF, #00FF00)
- [ ] No colored border glow on dark backgrounds
- [ ] No blue + purple color pairing

**Visual Effects:**
- [ ] No glassmorphism with glow borders
- [ ] No cheap neon glow on icons
- [ ] No gradient fills within icons
- [ ] No outer glow on any element
- [ ] No multiple gradient overlays
- [ ] No "holographic" or iridescent effects

**Layout Patterns:**
- [ ] No "cyberpunk dashboard" aesthetic
- [ ] No identical card grids (icon+heading+text × 6)
- [ ] No hexagonal UI elements
- [ ] Full-height hero (100vh) is ALLOWED for immersive storytelling, but ensure scroll affordance
- [ ] Grid patterns or dot matrices are ALLOWED for DevTools, Neo-brutalism, or technical products
- [ ] **Layout Mode Consistency**: check against the declared `theme.layoutMode`:
  - `EDITORIAL` — MUST use at least one non-linear section (Bento Grid, asymmetric columns, overlapping elements, or editorial rhythm). Pure flex-column = FAIL.
  - `UTILITY` — linear layout allowed, but MUST be elevated through typography, deliberate whitespace, or refined micro-interactions. Visually bland linear = FAIL.
  - `HYBRID` — MUST contain at least one heterogeneous layout zone (e.g. featured hero or bento section) AND at least one clean linear section. A layout that is entirely one mode = FAIL.
  - If `theme.layoutMode` is absent, infer from product type (consumer/lifestyle → EDITORIAL rules apply; B2B/tool → UTILITY rules apply).

**Typography:**
- [ ] No "futuristic" fonts (Orbitron, Exo, Space Grotesk as body)
- [ ] Not 4+ type styles above fold
- [ ] No gradient text
- [ ] No neon text on dark backgrounds

**Icons & Images:**
- [ ] No emoji as functional icons (🚀 📊 💡)
- [ ] No sparkle decorations (✨) around elements
- [ ] No AI-generated cartoon avatars
- [ ] No mixed icon libraries (inconsistent styles)
- [ ] Every meaningful image slot uses or specifies a real source: user/brand asset, official media, websearch/image search, Dribbble/Behance/Mobbin/UINotes artwork, Unsplash/Pexels/Wikimedia-style photography, product screenshot, user-content data, or generated bitmap
- [ ] Images depict the actual subject/category/state; no gray boxes, "Image" labels, abstract gradient placeholders, generic laptop mockups, or dark blurred stock backgrounds
- [ ] Image specs include crop/focal point, alt text, and fallback behavior

### The Golden Rule Test

> **If it looks like a sci-fi movie interface, DELETE IT AND START OVER.**

**Compare side-by-side with:** the reference system you picked from the candidate pool (one of: Notion / Spotify / Arc / Figma / Linear / Stripe / Vercel / Things 3 / Raycast / Superhuman / Apple HIG / Material 3) — not always the same 2-3 names.

**If it looks more like a Dribbble "concept" than a real product:** AI-generated.

### Common Issues

| Issue | Severity | Fix Reference |
|-------|----------|---------------|
| 3+ AI detection traits | Critical | DELETE AND RESTART (visual-system hub) |
| Purple primary color | Critical | visual-tokens.md (Banned Colors) |
| Cyberpunk aesthetic | Critical | anti-patterns.md (AI Detection) |
| 1-2 AI traits | High | design-refine.md or targeted fixes |

---

## Quick Pre-Flight Checklist

Fast pass before full audit. Use this for rapid QA during design process.

### 30-Second Scan

- [ ] Background NOT purple-black
- [ ] Primary color NOT purple/violet
- [ ] NO glassmorphism + glow borders
- [ ] Buttons solid colors, NOT gradients
- [ ] Looks like a real shipped product (the precision/polish standard of the reference system you selected)

**If any fail:** Run full AI detection audit.

### 2-Minute Interaction Test

- [ ] Hover 3 elements: do they increase visibility?
- [ ] Tab through page: focus indicators visible?
- [ ] Press a button: does it provide tactile feedback?
- [ ] Scroll the page: native browser behavior?
- [ ] Check contrast: body text readable?

**If 2+ fail:** Run full audit.

---

## Remediation Map

When issues are found, use this map to identify which skill/reference to invoke for fixes.

| Issue Category | Recommended Skill/Reference | Priority |
|----------------|----------------------------|----------|
| **Color problems** | visual-tokens.md, design-refine.md | High |
| **Component state gaps** | component-recipe.md | Critical |
| **Motion problems** | motion-system.md | High |
| **Layout/hierarchy** | product-page-architecture (external) | Medium |
| **Brand/identity issues** | material-metaphor.md (Innovation Track) | High |
| **Typography issues** | visual-tokens.md | High |
| **Icon/imagery issues** | anti-patterns.md (Icon Anti-Patterns) | Medium |
| **Accessibility issues** | component-recipe.md (Accessibility) | Critical |
| **AI detection traits** | If 3+: DELETE AND RESTART; If 1-2: targeted fixes | Critical/High |

---

## Output Format

Produce a structured report with these sections:

### 1. AI Detection Verdict

**Status:** Pass / Fail / Warning

**Traits Found:** [List all detected AI signatures]

**Recommendation:** Continue to detailed audit / Fix targeted issues / DELETE AND RESTART

### 2. Critical Issues

**Must fix before shipping.**

- Issue description
- Location/component affected
- Severity: Critical
- Remediation: Which skill/reference to use
- Estimated effort: Quick / Moderate / Substantial

### 3. High Priority Issues

**Should fix before shipping.**

Same format as Critical Issues.

### 4. Medium/Low Issues

**Fix if time permits / Polish items.**

Condensed format: issue + remediation reference only.

### 5. Positive Findings

**What works well.**

- Strong points of the design
- Patterns to preserve
- Areas that meet/exceed standards

### 6. Summary & Next Steps

- Total issue count by severity
- Recommended skills to invoke
- Estimated remediation time
- Go/No-Go recommendation

---

## Example Report Structure

```markdown
# Design Audit Report: [Product Name]

## Executive Summary
[2-3 sentences: overall verdict, major issues, recommendation]

---

## 1. AI Detection Verdict

**Status:** Warning (2 traits detected)

**Traits Found:**
- Blue + Purple color pairing (primary blue + secondary purple)
- 4 type styles above fold (overheading, heading, subheading, body)

**Recommendation:** Fix targeted issues before proceeding. NOT a full restart.

---

## 2. Critical Issues

### 2.1 Missing Focus Indicators
**Location:** All buttons and form inputs
**Issue:** No visible focus-visible rings for keyboard navigation
**Impact:** WCAG 2.4.7 violation, keyboard users cannot navigate
**Remediation:** component-recipe.md (Focus State section)
**Effort:** Quick (add focus-visible: ring classes)

---

## 3. High Priority Issues

### 3.1 Weak Layer Separation (Dark Mode)
**Location:** Card components on dark background
**Issue:** Background (#18181B) and surface (#1A1A1A) too similar
**Impact:** Poor visual hierarchy, cards don't pop
**Remediation:** visual-tokens.md (Surface colors)
**Effort:** Quick (adjust surface to #27272A)

---

## 4. Medium Priority Issues

- Typography: Body text at 13px (should be 14px min) → visual-tokens.md
- Motion: Fade-in on scroll present → motion-system.md (Banned Patterns)
- Hover: Secondary buttons lack hover state → component-recipe.md

---

## 5. Low Priority Issues

- Spacing: Inconsistent card padding (p-4 vs p-6)
- Animation: Loading spinner duration too long (800ms)
- Icons: Mixed icon sizes (20px and 24px)

---

## 6. Positive Findings

✓ Color palette is professional (no AI-default purple treatment)
✓ Accent color coverage at ~10% (ideal range)
✓ Typography hierarchy clear above fold (3 styles)
✓ Primary buttons use accent color consistently
✓ All buttons have active state feedback

---

## 7. Summary & Next Steps

**Issue Count:**
- Critical: 1
- High: 1
- Medium: 3
- Low: 3

**Recommended Actions:**
1. Invoke component-recipe.md → Add focus-visible indicators (30 min)
2. Adjust surface colors per visual-tokens.md (15 min)
3. Review motion-system.md → Remove fade-in on scroll (15 min)

**Estimated Remediation:** 1-2 hours

**Go/No-Go:** NO-GO until Critical issue resolved, GO after focus indicators added.
```

---

## When to Use This Audit

**Required Usage:**
- After completing the visual design pipeline
- Before final handoff to development
- After AI-generated design output (mandatory)

**Optional Usage:**
- During design process for quick checks (use Quick Pre-Flight Checklist)
- When stakeholders request "design review"
- When design feels "off" but you can't pinpoint why

**When NOT to Use:**
- Early in design process (too premature)
- For minor iteration/tweaks (use Quick Pre-Flight instead)

---

## Audit Workflow

1. **Load References:** Read anti-patterns.md for banned pattern list
2. **Quick Scan (30 sec):** Check AI detection traits
3. **Run 5 Audits:** Visual Coherence, Typography, Interaction, Motion, Anti-AI
4. **Document Issues:** Severity + remediation map
5. **Positive Findings:** Note what works well
6. **Generate Report:** Structured output with next steps
7. **Handoff:** User receives report, invokes recommended skills for fixes

---

## Quality Standards

A design PASSES audit when:

- [ ] 0 Critical issues
- [ ] 0-2 High Priority issues
- [ ] AI Detection: Pass or Warning (not Fail)
- [ ] All accessibility standards met (WCAG AA)
- [ ] All interactive elements have complete state coverage
- [ ] No banned motion patterns present
- [ ] Typography meets minimum standards
- [ ] Color contrast passes WCAG AA

A design FAILS audit when:

- [ ] 1+ Critical issues present
- [ ] 3+ AI detection traits
- [ ] Non-functional core interactions
- [ ] Missing accessibility features (focus indicators, contrast)

**Fail = NO-GO for development until issues resolved.**

---

## The Golden Rule (Repeated for Emphasis)

> **If it looks like a sci-fi movie interface, a gaming dashboard, or something from Blade Runner — DELETE IT AND START OVER.**
>
> Professional design is **invisible**. It serves the content, not the aesthetic ego of the designer (or AI).
>
> **Reference products to study** (rotate across the pool; do NOT lock to the first 2-3 names): Notion, Spotify, Arc, Things 3, Figma, Airbnb, Raycast, Superhuman, Apple HIG, Material 3, Linear, Stripe, Vercel.
>
> **Discard as references:** Dribbble "dark dashboard" shots, Behance templates, AI-generated portfolio sites.
