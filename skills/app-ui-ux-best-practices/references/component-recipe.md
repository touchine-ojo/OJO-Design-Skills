# Component Recipe Reference

Component design specification for both Convention Track and Innovation Track. Defines UI components as atomic Tailwind class strings with complete state coverage.

> **Hero / above-the-fold surfaces.** This file covers in-page interactive components (buttons, cards, inputs, navigation, etc.). For hero / landing / marketing-front composition, the source-of-truth recipe lives in `hero-enrichment.md` — keyed by the `theme.hero.tier` value (`0` / `A` / `B` / `C` / `D` / `E`) emitted by the design-dna sub-agent. The write-code sub-agent MUST read `hero-enrichment.md` and use the recipe sketch matching the declared tier as the starting point for the hero region. Do NOT improvise a hero from this file's button + card primitives — every tier in `hero-enrichment.md` has explicit MUST-DOs, MUST-NOTs, and anti-patterns that this file does not encode.

---

## The 8-State Interaction Model (CRITICAL)

Every interactive component MUST define all 8 states. Missing states create incomplete user experiences.

### 1. Default State

Base appearance when idle, not being interacted with.

**Requirements:**
- Clear visual hierarchy
- Readable at intended size
- Sufficient contrast
- Consistent with design tokens

**Example (Primary Button):**
```
bg-primary text-white px-4 py-2 rounded-lg font-medium shadow-sm transition-all duration-200
```

### 2. Hover State

Triggered when cursor is over element.

**CRITICAL RULES:**
- MUST increase visibility and clickability
- Makes element MORE inviting, not less
- Moves toward user (up or forward in z-space)
- NO layout shift or reflow

**Good Hover Patterns:**
```
Lift: hover:shadow-lg hover:-translate-y-0.5
Glow: hover:ring-2 hover:ring-primary/20
Brighten: hover:bg-primary-600 (lighter than default primary-700)
Scale: hover:scale-[1.02] (subtle growth)
```

**Example (Primary Button Hover):**
```
hover:bg-primary-600 hover:shadow-md hover:-translate-y-0.5
```

### 3. Focus State

Triggered when element receives keyboard focus.

**REQUIREMENTS:**
- Must have visible focus ring for accessibility (WCAG 2.4.7)
- Use focus-visible: variant to avoid mouse focus rings
- Minimum 2px ring width
- Sufficient contrast (3:1 minimum)

**Example (Primary Button Focus):**
```
focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2
```

### 4. Active State

Triggered when element is being pressed/clicked.

**REQUIREMENTS:**
- Tactile feedback - element should feel "pressed"
- Brief duration (50-100ms visual feedback)
- Obvious physical response

**Good Active Patterns:**
```
Press down: active:scale-[0.98]
Depress: active:translate-y-0.5
Darken: active:bg-primary-800
```

**Example (Primary Button Active):**
```
active:scale-[0.98] active:translate-y-0
```

### 5. Disabled State

Element is not interactive, action is unavailable.

**REQUIREMENTS:**
- Reduced opacity: 50-60%
- Cursor change: cursor-not-allowed
- No pointer events
- Grayed out colors

**Example (Primary Button Disabled):**
```
disabled:opacity-50 disabled:cursor-not-allowed disabled:translate-y-0 disabled:shadow-none
```

### 6. Loading State

Element is processing an action, user must wait.

**REQUIREMENTS:**
- Show spinner or skeleton
- Disable interaction: pointer-events-none
- Optional: reduce opacity or show pulse animation
- Cursor change: cursor-wait

**Example (Primary Button Loading):**
```
aria-busy:opacity-70 aria-busy:cursor-wait aria-busy:pointer-events-none
```

**Visual Pattern:**
Replace button text with spinner, or show spinner alongside text.

### 7. Error State

Element or its input has validation error.

**REQUIREMENTS:**
- Error border color: border-error (typically red)
- Error text color if text present
- Optional: red ring or glow for emphasis
- Clear visual distinction from default

**Example (Input Field Error):**
```
aria-invalid:border-error aria-invalid:ring-error/20 aria-invalid:ring-2
```

### 8. Success State

Action completed successfully or input is valid.

**REQUIREMENTS:**
- Success border or background color (typically green)
- Optional: green ring or checkmark icon
- Temporary state (may auto-dismiss after 2-3s)

**Example (Input Field Success):**
```
data-[valid=true]:border-success data-[valid=true]:ring-success/20
```

---

## Hover Anti-Patterns (BANNED)

These patterns trigger "bad UX" detection from YC Design Review. All are prohibited.

### 1. Sibling Fade-Out (Context-Dependent)

**Description:** Hovering over one item dims all other items.

**When Banned:** In standard SaaS/utility apps, it reduces readability of other options and feels like punishment.
**When Allowed (EXEMPT):** In creative portfolios, editorial layouts, or high-end marketing pages, this is a valid technique to create intense focus on the hovered element.

**Bad Code (for SaaS):**
```css
.group:hover .item:not(:hover) { opacity: 0.5; }
```

**Fix:** Only modify the hovered element, never affect siblings.

### 2. Wrong-Direction Movement (BANNED)

**Description:** Hover moves element down or away from cursor.

**Why Banned:** Cursor can lose tracking, feels unresponsive.

**Bad Code:**
```
hover:translate-y-1  /* moves down - WRONG */
```

**Fix:** Move toward user (up or forward).
```
hover:-translate-y-0.5  /* moves up - CORRECT */
```

### 3. Layout Shift (Context-Dependent)

**Description:** Hover changes dimensions causing reflow.

**When Banned:** In standard UI components (buttons, nav), causing adjacent elements to shift is disorienting.
**When Allowed (EXEMPT):** In creative/editorial designs, intentional layout shifts (e.g., expanding accordion cards, physical "squish" effects) can add a tactile, playful feel.

**Bad Code (for standard UI):**
```
hover:p-6  /* changes from p-4, shifts layout */
```

**Fix:** Use transform instead of changing padding/margin.
```
hover:scale-[1.02]  /* no layout shift */
```

### Correct Hover Behavior Summary

- Makes element MORE visible, not less
- Moves toward user (up, forward in z-space)
- No layout shift (use transform, not margin/padding changes)
- Provides clear affordance for interaction
- Increases perceived clickability

---

## Required Components

Provide Tailwind class specifications for these 6 core components with all 8 states.

### 1. Container/Card

Base structural element for grouping content.

**Purpose:** Content grouping, visual separation, hierarchy

**States to Define:**
- Default: base appearance
- Hover: optional (if clickable)
- Focus: if interactive
- Active: if clickable
- Disabled: if conditional rendering
- Loading: if content loads dynamically
- Error: if validation applies
- Success: if validation applies

**Example Specification:**

```
CONTAINER/CARD:
Default: bg-surface border border-border rounded-lg p-6 shadow-sm
Hover: hover:shadow-md hover:border-border/80 (if clickable)
Focus: focus-visible:ring-2 focus-visible:ring-primary (if interactive)
Active: active:scale-[0.99] (if clickable)
Disabled: opacity-60 pointer-events-none
Loading: animate-pulse
Error: border-error ring-1 ring-error/20
Success: border-success ring-1 ring-success/20
```

### 2. Primary Button

Main call-to-action button.

**Purpose:** Primary user action, highest visual weight

**Requirements:**
- Must use primary accent color
- Must have all 8 states defined
- Must provide tactile feedback (active state)
- Must be keyboard accessible

**Example Specification:**

```
PRIMARY_BUTTON:
Default: bg-primary text-white px-4 py-2 rounded-lg font-medium shadow-sm transition-all duration-200
Hover: hover:bg-primary-600 hover:shadow-md hover:-translate-y-0.5
Focus: focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2
Active: active:scale-[0.98] active:translate-y-0
Disabled: disabled:opacity-50 disabled:cursor-not-allowed disabled:translate-y-0 disabled:shadow-none
Loading: aria-busy:opacity-70 aria-busy:cursor-wait aria-busy:pointer-events-none
Error: data-[error=true]:bg-error data-[error=true]:ring-error/20
Success: data-[success=true]:bg-success data-[success=true]:ring-success/20
```

### 3. Secondary Button

Alternative action button, lower hierarchy than primary.

**Purpose:** Secondary user action, supporting actions

**Requirements:**
- Must be visually distinct from primary (outline or ghost style)
- Must have all 8 states defined
- Must provide tactile feedback
- Should not compete with primary button

**Example Specification:**

```
SECONDARY_BUTTON:
Default: bg-transparent border border-border text-text-primary px-4 py-2 rounded-lg font-medium transition-all duration-200
Hover: hover:bg-surface hover:border-border/80 hover:-translate-y-0.5
Focus: focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2
Active: active:scale-[0.98] active:translate-y-0
Disabled: disabled:opacity-50 disabled:cursor-not-allowed disabled:translate-y-0
Loading: aria-busy:opacity-70 aria-busy:cursor-wait aria-busy:pointer-events-none
Error: data-[error=true]:border-error data-[error=true]:text-error
Success: data-[success=true]:border-success data-[success=true]:text-success
```

### 4. Input Field

Text input element for user data entry.

**Purpose:** Text input, form fields

**Requirements:**
- Clear visual boundary (border)
- Sufficient internal padding
- All 8 states (especially error/success for validation)
- Placeholder text support
- Label association

**Example Specification:**

```
INPUT_FIELD:
Default: w-full px-3 py-2 border border-border rounded-lg bg-background text-text-primary placeholder:text-text-disabled transition-colors duration-200
Hover: hover:border-border/80
Focus: focus:outline-none focus:ring-2 focus:ring-primary focus:border-primary
Active: (same as focus)
Disabled: disabled:opacity-50 disabled:cursor-not-allowed disabled:bg-surface/50
Loading: aria-busy:opacity-70 aria-busy:cursor-wait
Error: aria-invalid:border-error aria-invalid:ring-2 aria-invalid:ring-error/20 aria-invalid:focus:ring-error
Success: data-[valid=true]:border-success data-[valid=true]:ring-1 data-[valid=true]:ring-success/20
```

### 5. Navigation Item

Sidebar or top navigation link/button.

**Purpose:** Navigation between sections or pages

**Requirements:**
- Clear active/current state distinction
- Hover feedback
- Keyboard accessible
- Icon + text support

**Example Specification:**

```
NAVIGATION_ITEM:
Default: flex items-center gap-3 px-3 py-2 rounded-lg text-text-secondary transition-colors duration-200
Hover: hover:bg-surface hover:text-text-primary
Focus: focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-1
Active: aria-current:bg-primary/10 aria-current:text-primary aria-current:font-medium
Disabled: disabled:opacity-50 disabled:cursor-not-allowed
Loading: (typically N/A)
Error: (typically N/A)
Success: (typically N/A)
```

### 6. Badge/Tag

Small label or status indicator.

**Purpose:** Status labels, categories, metadata

**Requirements:**
- Compact size (small text, tight padding)
- Optional dismissible (if interactive)
- Color-coded for status
- May be static (non-interactive)

**Example Specification:**

```
BADGE/TAG:
Default: inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-surface text-text-secondary text-xs font-medium border border-border
Hover: hover:bg-surface/80 (if interactive)
Focus: focus-visible:ring-2 focus-visible:ring-primary (if interactive)
Active: active:scale-95 (if interactive)
Disabled: disabled:opacity-50
Loading: (typically N/A)
Error: bg-error/10 text-error border-error/20
Success: bg-success/10 text-success border-success/20
```

---

## Layout Pattern Library

In-page section composition. Pick the pattern that fits the content and the direction's Layout Vibe — do NOT default every section to a centered single-column stack, and do NOT force complexity either. The point is that across different products the chosen pattern should **vary**.

| Pattern | Shape | Use for | Mobile note |
|---|---|---|---|
| **Bento Grid** | Irregular grid, mixed-size cells | Dashboards, overviews, feature matrices | Allowed as a natural 2-col card/room grid; do NOT force asymmetric bento on narrow viewports |
| **Asymmetric Split** | Unequal columns (60/40, 70/30) | Editorial, feature + detail | Desktop/tablet; on phone collapse to stacked order |
| **Full-Screen Segments** | Section-based, each screen = one message | Marketing, onboarding, storytelling | Works on mobile as vertical full-bleed segments |
| **Sidebar Narrative** | Fixed rail + scrolling main | Docs, settings, desktop tools | On mobile becomes a drawer or a Hub tile-grid |
| **Overlap / Layer** | Intentionally overlapping elements for depth | Hero, brand surfaces, immersive | Use sparingly on mobile; keep tap targets clear |
| **List + Detail** | Master list → pushed detail | Browsing, inbox, catalog (pairs with the Stack shell) | Canonical mobile drill-in |
| **Hub Tile-Grid** | Entry tiles launching sub-flows | Launcher/home of multi-feature apps (pairs with the Hub shell) | 2-col tile grid + safe area |

Respect the Mobile Exemption: pure single-column stacks are natural on phone — elevate them with typography and vertical rhythm rather than forcing bento/asymmetry.

---

## Convention Track Approach

Study the reference product you selected from the candidate pool (Notion / Spotify / Arc / Things 3 / Figma / Airbnb / Linear / Stripe / Vercel / Apple HIG / Material 3 / etc. — any one of, chosen on fit, not on which name appears first) and replicate its component patterns faithfully.

### What to Replicate

**Visual Properties:**
- Border radius values (subtle rounded vs. pronounced rounded)
- Shadow depth and layering
- Color usage patterns (where primary appears, how surface differs from background)
- Spacing internal to components
- Typography hierarchy within components

**Interaction Properties:**
- Hover states (lift, glow, color shift)
- Focus ring style and color
- Active state feedback
- Transition durations and easing

**State Patterns:**
- How disabled states are indicated
- Loading state implementation
- Error/success feedback patterns

### Goal

Consistency with established system, not originality. Users chose Convention Track because they want proven patterns.

### Process

1. Capture screenshots of reference system components in all states
2. Inspect with browser DevTools to extract exact values
3. Translate to Tailwind classes
4. Test all 8 states match reference behavior
5. Document deviations (if any) with rationale

---

## Innovation Track Approach

Use aesthetic judgment to TRANSLATE Feeling Keywords and Material Metaphor into visual code.

### The Translation Challenge

Creative interpretation required:
- How does "Quietness" affect shadow weight and border presence?
- How does "Liquid Metal" dictate background colors and ring utilities?
- How does "Playfulness" change rounded corners and hover animations?
- How does "Precision" influence spacing and alignment?

### Translation Examples

**Feeling: "Quietness" + Material: "Soft Fabric"**
- High rounded corners (rounded-xl or rounded-2xl)
- Minimal borders or no borders (rely on subtle shadows)
- Soft, diffused shadows (shadow-sm with high blur)
- Muted color saturation
- Generous padding (p-6, p-8)

**Feeling: "Precision" + Material: "Machined Metal"**
- Sharp corners (rounded-sm or rounded-none)
- Crisp 1px borders (border border-border)
- Tight, controlled shadows (shadow-sm with low blur)
- High contrast colors
- Compact padding (p-3, p-4)

**Feeling: "Playfulness" + Material: "Bouncy Gel"**
- Varied border radius (rounded-lg to rounded-2xl, mix for variety)
- Bright, saturated colors
- Multi-layer shadows (shadow-md with colored tint)
- Active state with scale transform (active:scale-95)
- Comfortable padding with rhythm (p-4, p-6)

### Material-Specific Patterns

**Glass Material:**
```
Container: backdrop-blur-sm bg-white/10 border border-white/20 shadow-lg
Button: backdrop-blur-md bg-white/20 border border-white/30 hover:bg-white/30
```

**Paper Material:**
```
Container: bg-surface shadow-sm rounded-lg border-0
Button: bg-primary text-white shadow-md hover:shadow-lg rounded-md
```

**Liquid Metal Material:**
```
Container: bg-gradient-to-br from-gray-800 to-gray-900 shadow-2xl rounded-xl
Button: bg-gradient-to-r from-primary to-primary-600 hover:from-primary-600
```

**Fabric Material:**
```
Container: bg-surface rounded-2xl shadow-sm border-0 p-8
Button: bg-primary text-white rounded-full px-6 py-3 shadow-md hover:shadow-lg
```

**Neo-brutalism Material (Modern Genre):**
```
Container: bg-white border-4 border-black shadow-[8px_8px_0px_0px_rgba(0,0,0,1)] rounded-none
Button: bg-primary text-black font-bold border-2 border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] hover:translate-y-[2px] hover:translate-x-[2px] hover:shadow-[2px_2px_0px_0px_rgba(0,0,0,1)] active:translate-y-[4px] active:translate-x-[4px] active:shadow-none transition-all
```

**Spatial UI / Advanced Glass (Modern Genre):**
```
Container: bg-white/10 backdrop-blur-2xl border border-white/20 shadow-[0_8px_32px_0_rgba(0,0,0,0.3)] ring-1 ring-white/10 inset-0
Button: bg-white/5 hover:bg-white/10 backdrop-blur-md border border-white/10 shadow-[inset_0_1px_1px_rgba(255,255,255,0.2)] text-white transition-all
```

### 3D / WebGL Component Recipe (APP high-value components)

Three.js is allowed for high-value components when CSS cannot credibly express the interaction. Use it for real geometry, perspective, reflection, inertia, or 3D rotation: rotating play buttons, vinyl discs, album sleeves, knobs, capsule switches, sculptural CTAs, or media controls that define the product feel.

**Use CSS/Tailwind instead when:**
- The effect is only lift, press, mild tilt, blur, glass, bevel, or shadow.
- The component is routine UI: settings rows, standard form fields, ordinary navigation, secondary buttons.

**Use Three.js / React Three Fiber when:**
- The control needs real geometry or material response, not a flat transform.
- The 3D motion is part of the product's signature interaction.
- The component remains understandable without the canvas.

**Required implementation contract:**
- Keep a real semantic DOM control (`button`, `input`, or equivalent) for keyboard activation, focus, labels, and screen readers.
- The canvas must be decorative or enhancement-layered over/under the DOM control; it cannot be the only accessible button.
- Provide a canvas fallback: if WebGL fails or the package is unavailable, render the same control as a token-styled DOM component.
- Support `prefers-reduced-motion`: disable continuous rotation, reduce inertia, and keep a static material frame.
- Touch target remains at least 44x44px, and focus-visible state remains obvious.

---

## Accessibility Requirements

All interactive components must meet WCAG 2.1 AA standards minimum.

### Keyboard Navigation

**Requirements:**
- Focusable with Tab key
- Activatable with Enter or Space
- Visible focus indicators (focus-visible: ring)
- Logical tab order

**Implementation:**
- Use semantic HTML (button, a, input)
- Add tabindex="0" only when necessary
- Never use tabindex > 0
- Provide keyboard shortcuts for power users (optional)

### Screen Readers

**Requirements:**
- Proper ARIA labels and roles
- State announcements (aria-busy, aria-invalid, aria-current)
- Semantic HTML when possible
- Descriptive text for icon-only buttons

**Implementation:**
```html
<button aria-label="Close dialog" aria-busy="false">
<input aria-invalid="true" aria-describedby="error-message">
<nav aria-current="page">
```

### Touch Targets

**Requirements:**
- Minimum 44x44px touch target size (WCAG 2.5.5)
- Adequate spacing between interactive elements (8px minimum)
- Larger targets for primary actions

**Implementation:**
```
min-h-[44px] min-w-[44px]  // minimum touch target
p-3  // 12px padding typically achieves 44px with content
gap-2  // 8px spacing between touch targets
```

### Color Contrast

**Requirements:**
- Text meets WCAG AA standards
  - Body text: 4.5:1 minimum
  - Large text (18pt+ or 14pt bold): 3:1 minimum
- UI components: 3:1 minimum
- Don't rely on color alone for state indication

**Implementation:**
- Use contrast checker tools
- Test with grayscale filter
- Add icons or text labels alongside color indicators
- Provide alternative cues (borders, icons, text)

---

## Component Specification Format

For each component, provide all 8 states:

```
COMPONENT_NAME:
Default: [tailwind classes]
Hover: [tailwind classes for hover state]
Focus: [tailwind classes for focus-visible state]
Active: [tailwind classes for active state]
Disabled: [tailwind classes for disabled state]
Loading: [tailwind classes for loading state]
Error: [tailwind classes for error state]
Success: [tailwind classes for success state]
```

### Complete Example: Primary Button

```
PRIMARY_BUTTON:
Default: bg-primary text-white px-4 py-2.5 rounded-lg font-medium shadow-sm transition-all duration-200 min-h-[44px]
Hover: hover:bg-primary-600 hover:shadow-md hover:-translate-y-0.5
Focus: focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2
Active: active:scale-[0.98] active:translate-y-0 active:shadow-sm
Disabled: disabled:opacity-50 disabled:cursor-not-allowed disabled:translate-y-0 disabled:shadow-none
Loading: aria-busy:opacity-70 aria-busy:cursor-wait aria-busy:pointer-events-none
Error: data-[error=true]:bg-error data-[error=true]:hover:bg-error/90
Success: data-[success=true]:bg-success data-[success=true]:hover:bg-success/90
```

---

## Responsive Considerations

Components must adapt to different screen sizes.

### Mobile Adaptations

**Buttons:**
```
Mobile: px-4 py-3 text-base  // larger touch targets
Desktop: px-4 py-2 text-sm  // more compact
```

**Input Fields:**
```
Mobile: text-base  // prevents zoom on iOS
Desktop: text-sm
```

**Navigation Items:**
```
Mobile: py-3 text-base  // easier tapping
Desktop: py-2 text-sm
```

### Tailwind Responsive Classes

```
// Mobile-first approach
px-4 py-3 text-base  // default (mobile)
md:px-4 md:py-2 md:text-sm  // desktop override
```

---

## Output Format

Provide complete component specifications for all 6 required components with all 8 states each. Format as plain text blocks for easy copy/paste.

```
CONTAINER/CARD:
[8-state specification]

PRIMARY_BUTTON:
[8-state specification]

SECONDARY_BUTTON:
[8-state specification]

INPUT_FIELD:
[8-state specification]

NAVIGATION_ITEM:
[8-state specification]

BADGE/TAG:
[8-state specification]
```

Pass this specification to the motion-system skill for animation and transition definitions.

---

## Quality Checklist

Before finalizing component specifications:

- [ ] All 6 required components specified
- [ ] All 8 states defined for each interactive component
- [ ] No hover anti-patterns (sibling fade-out, wrong-direction, layout shift)
- [ ] Focus indicators present and visible (WCAG 2.4.7)
- [ ] Touch targets minimum 44x44px (WCAG 2.5.5)
- [ ] Color contrast meets WCAG AA (4.5:1 for text, 3:1 for UI)
- [ ] Disabled state clearly distinguished
- [ ] Loading state prevents interaction
- [ ] Error/success states provide clear feedback
- [ ] Tailwind classes valid and conflict-free
- [ ] Convention Track: matches reference system patterns
- [ ] Innovation Track: aligns with Material Metaphor and Feeling Keywords
