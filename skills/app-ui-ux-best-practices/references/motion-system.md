# Motion System Reference

Animation and interaction behavior specification combining spring physics with purpose-driven motion principles.

---

## Motion Purpose Test (CRITICAL)

**Evaluate BEFORE adding any animation. Every animation MUST pass ONE of these tests:**

### 1. Feedback
Confirms user's action was received.

**Examples:**
- Button press scales down (active:scale-[0.98])
- Form submit shows spinner
- Toggle switch slides
- Like button fills with color

**Test:** Does this animation tell the user "we received your input"?

### 2. Guidance
Directs attention to important content or next step.

**Examples:**
- Modal enters from center (draws eye to content)
- Error message slides in near invalid field
- Success checkmark appears on completed task
- Onboarding tooltip points to feature

**Test:** Does this animation help the user know where to look next?

### 3. Continuity
Maintains spatial context during transitions.

**Examples:**
- Card expands to detail view (morphs in place)
- Navigation slides from expected direction
- Accordion expands/collapses (preserves position)
- Image gallery swipes (maintains spatial relationship)

**Test:** Does this animation help the user understand where they are in the interface?

### 4. Brand Expression
Reinforces product's unique character.

**Examples:**
- Playful bounce on error (personality)
- Liquid morphing transitions (brand aesthetic)
- Custom loading animation (identity)
- Signature hover effect (differentiation)

**Test:** Does this animation express something unique about the brand?

---

## The "Worth-It Test"

**Before adding any motion effect, ask:**

> "Would you spend a week hand-coding this? If no, it probably isn't worth including even though AI makes it free."

**Why This Matters:**
- Just because something is easy doesn't mean it's worth doing
- Animation adds complexity (code, maintenance, performance)
- More animation ≠ better UX
- Users came for content, not animations

**Apply This Test To:**
- Scroll-triggered fade-ins
- Parallax effects
- Cursor-following elements
- Decorative background animations
- Page load animations that delay content

---

## Motion Pattern Trade-offs (Use Purposefully)

These patterns have historically been criticized in design reviews. They are NOT banned — they are available techniques that **must pass the Motion Purpose Test** (Feedback / Guidance / Continuity / Brand Expression) before use. Each carries trade-offs documented below; weigh them against the brand intent and the Material Metaphor before applying.

The default disposition is "use sparingly and with clear intent." When the brand demands expressive motion (e.g. cinematic landing pages, immersive product reveals, brand-forward marketing), these patterns become legitimate craft tools.

### 1. Fade-In on Scroll

**Pattern:** Static content fades in as user scrolls to it.

**Trade-offs to weigh:**
- Adds slight delay to content access
- Can annoy power users who scroll quickly
- When overused, becomes purely decorative

**When it works:**
- Brand expression on cinematic landing / story-driven pages
- Loading dynamic content (infinite scroll) — Feedback for loading state
- Pacing reveal of dense data viz / long-form narrative

**When to avoid:** Utility-dense screens (dashboards, settings, data tables) where speed of access matters.

### 2. Scroll Hijacking (Smooth Scroll / Section Snap / Parallax)

**Pattern:** Custom scroll behavior that augments browser defaults.

**Trade-offs to weigh:**
- May break user's muscle memory
- Can interfere with browser scroll controls / fast-scroll
- Accessibility risk if overdone

**When it works:**
- Section snapping on landing pages where each section is a discrete chapter
- Parallax for depth / brand storytelling on hero sections
- Smooth scroll for anchor navigation (`scroll-behavior: smooth`)
- One-page narrative product tours

**When to avoid:** Documentation, long-form reading, application UI, anywhere the user's primary goal is "scan to find something fast."

**Implementation note:** Even when used, leave keyboard shortcuts (Page Down / Home / End) and fast-scroll behavior intact.

### 3. Decorative Scroll Lines / Paths

**Pattern:** Animated lines or paths that follow scroll position.

**Trade-offs to weigh:**
- Performance overhead
- Can distract from primary content if too prominent

**When it works:**
- Progress indicator for long-form articles (purpose: Guidance — "how much is left")
- Story-driven landing pages where the path IS the narrative spine
- Process / timeline visualizations where the line carries meaning

**When to avoid:** Application UI, dense content surfaces.

### 4. Cursor-Following Elements

**Pattern:** Buttons or graphics that respond to mouse position.

**Trade-offs to weigh:**
- Doesn't help keyboard / touch users
- Performance cost
- Can feel gimmicky if not tied to brand

**When it works:**
- Brand expression on agency / portfolio / creative-tool sites
- Spotlight effect that genuinely improves visibility (e.g. dark-mode hero)
- Subtle button tilt / magnetic hover when it reinforces "premium / playful" brand
- Interactive 3D / WebGL hero compositions

**When to avoid:** Application UI, anywhere keyboard users will outnumber mouse users.

### 5. Auto-Advancing Content

**Pattern:** Content changes on a timer without explicit user input.

**Trade-offs to weigh:**
- Users read at different speeds
- Can feel rushed if intervals are too short
- WCAG 2.2.2 — must be pausable when interactive

**When it works:**
- Hero carousels with visible progress indicators + pause-on-hover + manual controls
- Auto-playing background video (muted, decorative) on landing pages
- Timed empty-state hints that cycle while user is idle
- Status / live-feed surfaces (stock tickers, sports scores)

**When to avoid:** Any flow where missing content has cost (forms, settings, payment). Always provide pause + manual controls.

### 6. Pulsing / Looping Animations Near Content

**Pattern:** Continuous motion (pulse, loop, drift) near body content.

**Trade-offs to weigh:**
- Persistent motion competes for attention with reading
- Can cause vestibular issues for sensitive users
- High visual cost if not tied to meaning

**When it works:**
- Live indicators (red dot pulsing on "LIVE" badge — purpose: Feedback)
- Notification badges drawing attention to actionable changes
- Brand expression backgrounds (subtle gradient drift, ambient particles) when low-contrast and far from primary content
- Multiplayer / collaborative feature visualizations where the motion reinforces "alive / shared"

**When to avoid:** Within reading flow, immediately adjacent to forms / inputs, or as the primary visual treatment of a content surface.

**Implementation note:** All looping animations MUST honor `prefers-reduced-motion` (covered later in this doc).

---

## Scroll Behavior Rules

These rules describe the **default** behavior. Augmentations (smooth scroll, section snap, parallax, scroll-driven fade) are allowed when they pass the Motion Purpose Test and clearly serve brand or comprehension — see "Motion Pattern Trade-offs" above. Even when augmenting, preserve the accessibility floor in each rule.

### Rule 1: Preserve Native Scroll Accessibility Floor

Augment native scroll if the design demands it, but the following must keep working under all augmentations:
- Scrollbar reflects actual page position
- Keyboard shortcuts continue to work (Space, Page Down, Page Up, Home, End)
- Fast-scroll is reachable (not trapped in section-snap molasses on every section)
- Touch scrolling retains native momentum
- `prefers-reduced-motion` disables smooth-scroll easing, parallax, and scroll-driven animations

### Rule 2: Default to "Content Just Be There"; Stage Reveals Only Purposefully

Default behavior: content scrolling into view should be immediately present and readable. Reach for staged reveals (fade-in / slide-in / blur-to-focus / stagger) only when the brand intent demands it — typically narrative landing pages, marketing surfaces, or cinematic product reveals. Application UI, dashboards, settings, and reading flows should keep the default.

When staging a reveal:
- Keep the duration short (≤ 400ms) so power-scrollers aren't blocked
- Ensure content is functionally accessible immediately even if the visual reveal is incomplete
- Honor `prefers-reduced-motion` (skip the reveal entirely)

### Rule 3: Respect Browser Scroll Indicator

The scroll indicator (scrollbar thumb position) must accurately reflect:
- Current position in document
- Remaining content below/above
- Document total height

**Don't:**
- Change document height during scroll in ways that mislead the indicator
- Hide scrollbar without good reason (acceptable on full-bleed marketing surfaces with custom indicators)
- Use fake scroll indicators that don't reflect real position

---

## Spring Physics Parameters

Define animations using stiffness/damping/mass instead of just duration for more natural motion.

### Parameter Reference

**Stiffness:** How quickly the spring tries to reach its target
- Low (100-150): Slow, gentle
- Medium (200-300): Standard UI interactions
- High (400-500): Snappy, responsive

**Damping:** How much resistance the spring has
- Low (5-10): Bouncy, overshoots
- Medium (15-25): Smooth, minimal overshoot
- High (30-40): No overshoot, quick settle

**Mass:** How heavy the object feels (rarely changed)
- Light (0.5-0.8): Quick, floaty
- Standard (1.0): Normal
- Heavy (1.5-2.0): Weighty, substantial

### Common Patterns

**Button Press (Snappy Feedback):**
```
scale: 0.98
stiffness: 400
damping: 10
mass: 0.5
```

**Modal Open (Smooth Entry):**
```
y: 0 (from 20px)
opacity: 1 (from 0)
stiffness: 250
damping: 25
mass: 1.0
```

**Hover State (Playful Lift):**
```
y: -2px
stiffness: 300
damping: 15
mass: 0.8
```

**Page Transition (Substantial Movement):**
```
x: 0 (from 100%)
opacity: 1 (from 0)
stiffness: 200
damping: 30
mass: 1.2
```

---

## Motion Archetypes (Action-Verb + Physical Anchor)

The aesthetic side of the Material Metaphor (full base-material catalogue, environments, visual physics rules, edge treatment, surface luster, ambient warmth) lives in `material-metaphor.md`. This section covers the motion-physics slice — concrete spring archetypes named by action verb + physical-device anchor.

**No material → archetype lookup is provided.** After locking the material via `material-metaphor.md`, REASON about which archetype fits — based on the material's weight, surface friction, deformability, environment damping, AND the specific interaction's purpose. The same material can map to different archetypes in different contexts (e.g., Glass in a Jazz Club setting feels different from Glass in a Modern Gallery; a button press and a page transition on the same material warrant different archetypes).

**Convention Track:** Use standard easing from selected reference system (typically ease-out). Archetypes below are for Innovation Track.

**Innovation Track — six archetypes:**

| Verb | Physical anchor | Stiffness / Damping | Feel | Use cases |
|------|----------------|----------------------|------|-----------|
| **Click** | 磁铁吸合 / 卡扣 / 拨动开关 (magnet snap, latch, toggle) | 350-400 / 10-15 | Quick decisive snap, low resistance | button press, modal entry, dropdown reveal, toggle |
| **Slide** | 气压关门器 / 抽屉阻尼 (pneumatic door closer, drawer damper) | 250-300 / 20-25 | Smooth controlled travel, natural resistance | bottom sheet, accordion, drawer, FAB flyout |
| **Flow** | 蜂蜜倾倒 / 雾气弥散 (honey pour, mist diffusion) | 150-200 / 30-40 | Heavy damping, atmospheric travel | parallax, ambient morph, page transition, hero reveal |
| **Thunk** | 锤击 / 重物落桌 (hammer strike, heavy object landing) | 400-500 / 5-10 | Immediate, weighty, percussive | hard-confirm select, weight-feedback, success thud |
| **Bounce** | 橡皮球 / 弹簧床 (rubber ball, trampoline) | 300 / 8 | Playful overshoot, elastic | celebratory toast, kids/games, gamified confirm |
| **Drift** | 氦气球 / 棉絮飘 (helium balloon, drifting cotton) | 100 / 25 | Slow buoyant float | meditation, dreamy reveal, idle ambient loop |

**Reasoning prompts (use these to pick an archetype):**
- Is the material **heavy** (stone, metal, ceramic) or **light** (paper, fabric, mist)? Heavy → Thunk / Click; light → Drift / Flow.
- Is the surface **rigid** (glass, steel) or **deformable** (fabric, vellum, blown glass)? Rigid → Click / Thunk; deformable → Slide / Flow.
- Is the environment **damping** (Misty Garden, Library) or **stark** (Desert Noon, Gallery)? Damping → Flow / Drift; stark → Click / Thunk.
- Is the interaction **high-frequency UI** (button, toggle) or **rare brand moment** (page transition, hero)? High-frequency → Click / Slide; rare → Flow / Drift / Bounce.

Custom metaphors from `material-metaphor.md` "Invention Over Replication" should be reasoned through the same prompts — there is no fallback lookup.

---

## Duration Ranges

When using CSS transitions (not spring physics):

### Quick (150-200ms)
**Use For:** Micro-interactions, state changes
- Button hover
- Input focus
- Icon state changes
- Color transitions

**Tailwind:** `duration-150`, `duration-200`

### Standard (250-350ms)
**Use For:** Transitions, UI state changes
- Modal open/close
- Dropdown expand
- Tab switching
- Card expansion

**Tailwind:** `duration-300`

### Emphasis (400-600ms)
**Use For:** Page transitions, hero animations
- Page route changes
- Hero image loading
- Major layout shifts
- Onboarding steps

**Tailwind:** `duration-500`

### Exit Duration Rule
Exit animations should be ~75% of entrance duration.

**Example:**
- Enter: 300ms
- Exit: 225ms

**Why:** Users are more patient when things appear than when they disappear.

---

## Easing Functions

### Preferred Easing: Exponential Deceleration

**Best:** `ease-out-quart`, `ease-out-quint`

**Why:** Feels natural (objects slow down as they come to rest in real world)

**Tailwind:** `ease-out` (built-in approximation)

### Never Use

**BANNED:** `ease-in-out-bounce`, `ease-in-out-elastic`

**Why:** Feels dated (2010s web design), toy-like, unprofessional

### Easing by Purpose

| Purpose | Easing | Reason |
|---------|--------|--------|
| **Entrance** | ease-out | Starts fast, ends slow (arrives naturally) |
| **Exit** | ease-in | Starts slow, ends fast (departs quickly) |
| **Movement** | ease-in-out | Smooth acceleration and deceleration |
| **Feedback** | ease-out | Immediate response, gentle settle |

### All Animations Must Have Inertia

**NEVER:** Linear easing (`transition: all 300ms linear;`)

**WHY:** Nothing in nature moves at constant speed. Looks robotic.

**FIX:** Always use ease-out, ease-in, or ease-in-out.

---

## Element Appearance by Material

How elements enter and exit based on material metaphor.

| Material | Enter Animation | Exit Animation | Duration |
|----------|----------------|----------------|----------|
| **Glass** | Fade + scale up from 0.95 | Fade + scale down to 0.95 | 250-300ms |
| **Paper** | Slide from edge + fade | Slide away + fade | 300-350ms |
| **Water/Ink** | Expand from center (ripple) | Dissolve/fade | 400-500ms |
| **Mist** | Slow fade in (opacity only) | Slow fade out | 500-600ms |
| **Metal** | Quick fade + snap into place | Quick fade + snap out | 150-200ms |
| **Fabric** | Unfold/drape from top | Fold/collapse | 350-400ms |

### Implementation Examples

**Glass Enter:**
```css
@keyframes glass-enter {
  from {
    opacity: 0;
    transform: scale(0.95);
  }
  to {
    opacity: 1;
    transform: scale(1);
  }
}
```

**Paper Enter:**
```css
@keyframes paper-enter {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
```

---

## Motion Polish (Both Tracks)

### 1. Button Tactile Feedback (MANDATORY)

**Requirement:** All buttons MUST provide immediate tactile feedback.

**Implementation:**
```
active:scale-[0.98]
```

**Why:** Buttons should never feel "dead" or unresponsive.

**Duration:** 50-100ms (nearly instant)

### 2. Staggered List Entries

**Pattern:** When multiple items appear, stagger their entrance.

**Implementation:**
```css
.item:nth-child(1) { animation-delay: 0ms; }
.item:nth-child(2) { animation-delay: 30ms; }
.item:nth-child(3) { animation-delay: 60ms; }
.item:nth-child(4) { animation-delay: 90ms; }
```

**Delay:** 30-50ms between items

**Max Items:** Stagger first 6-8 items, then show rest immediately (avoid long waits)

**When to Use:** Initial page load, filtering results, expanding lists

**When NOT to Use:** Scrolling to new content (violates "content should just be there" rule)

### 3. GPU Acceleration (MANDATORY)

**Animate ONLY These Properties:**
- `transform` (translate, scale, rotate)
- `opacity`

**NEVER Animate:**
- `width`, `height` (causes reflow)
- `top`, `left`, `right`, `bottom` (causes reflow)
- `margin`, `padding` (causes reflow)
- `font-size` (causes reflow)

**Why:** Transform and opacity are GPU-accelerated, others force CPU layout recalculation.

**Height Animation Alternative -- `grid-template-rows`:**
For accordions, collapsible sections, and expand/collapse patterns, use `grid-template-rows: 0fr` to `1fr` instead of animating `height` directly:

```css
.collapsible {
  display: grid;
  grid-template-rows: 0fr;
  transition: grid-template-rows 300ms ease-out;
}
.collapsible.open {
  grid-template-rows: 1fr;
}
.collapsible > .content {
  overflow: hidden;
}
```

**Why this is better than `height` animation**: you don't need to know or calculate the target height -- the browser resolves `1fr` for you. This makes it reliable for dynamic content where the expanded height is unknown. **Note**: this still triggers layout during animation (changing track sizes is a layout operation), so keep collapsible sections simple and avoid nesting many animated grids simultaneously. For performance-critical cases with fixed heights, prefer `transform: scaleY()` with `transform-origin: top`.

**Force GPU Acceleration:**
```css
.animated-element {
  will-change: transform, opacity;
  transform: translateZ(0); /* Force hardware acceleration */
}
```

**Warning:** Don't overuse will-change (memory cost). Apply only to actively animating elements.

### 4. Reduced Motion Support (MANDATORY)

**Requirement:** All animations must respect prefers-reduced-motion.

**Implementation:**
```css
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

**Or per-element:**
```css
.animated-element {
  animation: slide-in 300ms ease-out;
}

@media (prefers-reduced-motion: reduce) {
  .animated-element {
    animation: none;
    opacity: 1; /* Ensure content is visible */
  }
}
```

**Alternative:** Crossfade instead of movement
```css
@media (prefers-reduced-motion: reduce) {
  .animated-element {
    /* Replace slide with fade */
    animation: fade-in 150ms ease-out;
  }
}
```

---

## Motion Specification Template

For each animation, document:

```markdown
## [Animation Name]

**Purpose:** [Feedback / Guidance / Continuity / Brand]

**Trigger:** [User action or system event]

**Properties:**
- Duration: [150-200ms / 250-350ms / 400-600ms]
- Easing: [ease-out / ease-in / ease-in-out]
- Transform: [specific values]
- Opacity: [start → end]

**Spring Parameters (if applicable):**
- Stiffness: [value]
- Damping: [value]
- Mass: [value]

**Reduced Motion:**
- [Crossfade / Disabled / Instant]

**Implementation:**
```css
[CSS code]
```
```

---

## Common Animation Patterns

### Button Hover & Press

```css
.button {
  transition: all 200ms ease-out;
}

.button:hover {
  transform: translateY(-1px);
  box-shadow: 0 4px 8px rgba(0,0,0,0.15);
}

.button:active {
  transform: scale(0.98);
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  transition-duration: 50ms;
}
```

**Purpose:** Feedback (confirms interaction)

### Modal Open

```css
@keyframes modal-open {
  from {
    opacity: 0;
    transform: translateY(20px) scale(0.98);
  }
  to {
    opacity: 1;
    transform: translateY(0) scale(1);
  }
}

.modal {
  animation: modal-open 300ms ease-out;
}
```

**Purpose:** Guidance (draws attention to dialog)

### Skeleton Loading

```css
@keyframes skeleton-pulse {
  0%, 100% {
    opacity: 1;
  }
  50% {
    opacity: 0.5;
  }
}

.skeleton {
  animation: skeleton-pulse 1.5s ease-in-out infinite;
}
```

**Purpose:** Feedback (content is loading)

### Page Transition

```css
@keyframes page-enter {
  from {
    opacity: 0;
    transform: translateX(20px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

.page {
  animation: page-enter 350ms ease-out;
}
```

**Purpose:** Continuity (shows direction of navigation)

---

## Performance Checklist

Before shipping animations:

- [ ] Only animating transform and opacity
- [ ] No layout thrashing (no width/height/margin animations)
- [ ] will-change applied only to actively animating elements
- [ ] Animations complete in under 600ms (user tolerance threshold)
- [ ] Infinite / looping animations near text or interactive elements are intentional and tied to meaning (live indicators, brand expression) — not decorative noise
- [ ] Reduced motion support implemented (mandatory for any infinite animation, scroll-driven motion, parallax, or staged reveal)
- [ ] Tested on low-end devices (animations don't jank)
- [ ] All animations pass Motion Purpose Test
- [ ] All animations pass Worth-It Test
- [ ] Patterns from "Motion Pattern Trade-offs" used purposefully and weighed against trade-offs (not as decorative defaults)

---

## Quality Gate Questions

Before adding any animation, answer these:

1. **Which purpose does this serve?** (Feedback / Guidance / Continuity / Brand)
2. **Would I spend a week coding this?** (Worth-It Test)
3. **Does this help users complete their task faster?** (Utility Test)
4. **Does this work with reduced-motion enabled?** (Accessibility Test)
5. **Is this GPU-accelerated?** (Performance Test)

**If you can't answer all 5 confidently: DON'T ADD THE ANIMATION.**

---

## Integration with Component Recipe

Motion system specifications should reference component states from component-recipe:

- Default → Hover: duration-200 ease-out
- Hover → Active: duration-50 ease-out
- Any → Disabled: duration-150 opacity only
- Any → Loading: duration-200 ease-in-out
- Any → Error/Success: duration-300 ease-out

Pass motion specifications to design-audit for quality review before implementation.
