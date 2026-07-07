# UI Design Anti-Patterns Reference

Complete list of prohibited design elements, AI-slop treatments, and challenge gates. Items explicitly marked banned are **absolutely banned** from professional UI design; challenge gates require justification instead of automatic rejection.

## Table of Contents

1. [AI-Generated Style Signatures (CRITICAL)](#ai-generated-style-signatures-critical)
2. [Icon Anti-Patterns](#icon-anti-patterns)
3. [Logo Anti-Patterns](#logo-anti-patterns)
4. [Color Anti-Patterns](#color-anti-patterns)
5. [Placeholder Anti-Patterns](#placeholder-anti-patterns)
6. [Layout Anti-Patterns](#layout-anti-patterns)
7. [Typography Anti-Patterns](#typography-anti-patterns)
8. [Interaction Anti-Patterns](#interaction-anti-patterns)
9. [Accessibility Violations](#accessibility-violations)

---

## AI-Generated Style Signatures (CRITICAL)

### The AI Slop Test

**Before reviewing any specific ban list, run this meta-check first:**

> If you showed this interface to someone and said "AI made this," would they believe you immediately? If yes, that's the problem.

A distinctive interface should make someone ask "how was this made?" not "which AI made this?" Review the banned patterns below -- they are the fingerprints of AI-generated work from 2024-2025. But the test above is the deeper principle: if the design feels generic, templated, or "obviously generated," it fails regardless of whether it hits a specific ban.

### ⛔ The "Cyberpunk Dashboard" Syndrome (ALL BANNED)

This is the #1 indicator of AI-generated design. If your design looks like a sci-fi movie control panel, **DELETE IT AND START OVER**.

```
THE AI FORMULA (ABSOLUTELY FORBIDDEN):
Deep purple/blue background (#0D0B1A, #0F0E17, #1A1625, #13111C)
+ Purple/blue gradient cards
+ Semi-transparent glassmorphism with glow borders
+ Neon accent colors (#A78BFA, #8B5CF6, #6366F1)
+ "Futuristic" sans-serif fonts
= INSTANT AI DETECTION → Professional credibility = 0
```

### ⛔ Banned Background Colors (Dark Mode)

| Color | Hex | Why Banned |
|-------|-----|------------|
| **Deep Purple-Black** | #0D0B1A, #0F0E17, #13111C | AI's favorite "premium dark" |
| **Purple-Tinted Dark** | #1A1625, #1E1B2E, #2D2640 | Cyberpunk cliché |
| **Pure Black (in SaaS)** | #000000 | Harsh for utility apps (EXEMPT: Allowed in Neo-brutalism, Editorial, or Spatial UI) |

**The rule**: any dark background is fine as long as it has **no purple/violet tint** (hue 260-300 with saturation > 10%). Different color temperatures are encouraged — vary your darks:
- Neutral darks (zinc, grey)
- Warm darks (stone, brown-tinted)
- Cool darks (slate, subtle blue-grey)
- Green-tinted darks (olive, forest)
- **Pure Black (#000000)** is allowed ONLY when explicitly designing in a high-contrast modern genre (e.g., Neo-brutalism).

**The test**: screenshot your dark background in isolation. Does it look like it came from a sci-fi movie? If yes, change it. Could you find this exact background on a shipped, successful product? If yes, it is fine.

### ⛔ Banned Card/Surface Styles (Unless Exempted by Genre)

| Style | Description | Why Banned | Exemption |
|-------|-------------|------------|-----------|
| **Purple gradient cards** | Linear gradient from purple to blue | AI signature | None (Strictly Banned) |
| **Cheap neon border on dark** | Bright colored border on dark surface | Cheap "tech" feel | Allowed ONLY as subtle inner-glow in Spatial UI |
| **Multi-layer transparency** | Stacked semi-transparent panels | Visual noise | Allowed ONLY in Spatial UI or Glassmorphism |

**✅ Use Instead**:
```css
/* Clean card on dark */
.card-dark {
  background: #27272A;
  border: 1px solid rgba(255, 255, 255, 0.06);
  border-radius: 12px;
}

/* Subtle elevation */
.card-elevated {
  background: #27272A;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);
}
```

### ⛔ Banned Color **Combination Patterns**

The problem is never a single color — it is **combinations and treatments** that signal AI generation. Any individual color is acceptable if it serves the product's brand. The following combination patterns are banned:

| Pattern | Why Banned |
|---------|------------|
| **Purple/violet primary on dark background** | AI's #1 default "premium" choice |
| **Blue + Purple pairing** (primary + secondary) | Overused AI combo regardless of ratio |
| **High-contrast gradient buttons** (purple-to-blue, pink-to-cyan, rainbow) | AI signature |
| **Cyan/neon highlights on dark surfaces** with glow effects | Cyberpunk cliché |
| **Pink + Cyan** anywhere in the same palette | Vaporwave/AI signature |
| **Multiple high-saturation accents + glow/blur** combined | Overstimulated AI aesthetic |

### The Self-Check Test

Before committing to any color choice, ask:
1. **Can you name a shipped, successful product that uses this combination?** If no, reconsider.
2. **Remove all glow/blur effects — does the palette still work?** If no, the palette is dependent on effects, not color harmony.
3. **Would a design review panel guess this was AI-generated?** If yes, change it.

### Color freedom

Any hue is acceptable as accent — coral, amber, crimson, emerald, slate blue, warm pink, olive, teal, orange, deep red, gold — as long as it does not form one of the banned combination patterns above. The color space is open. What matters is intentionality: every hue must earn its place through brand meaning, not because it was the safe default.

### ⛔ Muted Theme Convergence

One-note palettes are the quieter version of AI slop: nothing is neon or obviously banned, but the entire UI collapses into one dominant hue family. These are especially common:
- beige/cream/sand/tan lifestyle surfaces with matching tan cards and tan accents
- dark blue/slate SaaS surfaces with blue-gray panels and blue-gray accents
- brown/orange/espresso cafe palettes where every surface and CTA sits in the same warm family

These families are not forbidden colors. They are forbidden as unchallenged whole-interface defaults. If the product or reference genuinely requires one, add a counter-hue accent, a neutral temperature shift, or material contrast so the screen does not read as a single preset theme.

### ⛔ AI Style Detection Checklist

**If your design has 3+ of these, DELETE AND RESTART:**

- [ ] Remove deep purple/blue-black backgrounds
- [ ] Exclude AI-default purple/violet primary on dark, purple-blue, or neon-glow combinations
- [ ] Discard glassmorphism with colored glow borders
- [ ] Replace gradient buttons with solid single-color
- [ ] Discard "futuristic" dashboard layouts
- [ ] Remove neon text from dark backgrounds
- [ ] Eliminate semi-transparent overlapping cards
- [ ] Reduce blur effects to minimum
- [ ] Remove "sci-fi" styled icons or elements
- [ ] Discard rainbow or multi-color gradients

### ✅ Professional Dark Mode Reference

**Study these products for the range of valid dark mode approaches** (rotate across the pool; do NOT lock to the first 2-3 names):
- Notion (dark mode) - Warm stone darks, soft and readable
- Spotify - True black + high-saturation green, immersive
- Arc Browser - Colorful personality on dark canvas
- Things 3 - Warm dark with generous whitespace
- Raycast (raycast.com) - Warm darks, subtle depth and glow
- Apple Human Interface - Semantic colors, proper layered surfaces
- GitHub - Blue-grey tinted darks, functional density
- Linear (linear.app) - Zinc-based, minimal, cool neutral
- Vercel (vercel.com) - Near-black, single accent, sharp contrast

---

## Lazy Design Patterns (BANNED)

**Lazy design = Using default templates, stereotypes, and "everyone does it" patterns. The lazy choice is banned; the individual industry color or layout pattern is not automatically banned when it is justified and composed intentionally.**

---

### Industry Color Defaults (Challenge, Don't Auto-Ban)

These are the **lazy defaults** AI reaches for when it sees an industry keyword. Industry defaults are challenged, not banned — they are a signal to pause and think. If the color genuinely serves THIS product's brand, use it. If you chose it because "that's what food apps do," find something better.

| Industry | Default | Challenge question |
|----------|---------|-------------------|
| **Food / Dining** | Orange / Red | Is the brand about speed and appetite, or something else? |
| **Pets / Animals** | Orange / Yellow | Is this a playful pet toy brand, or a premium nutrition brand? |
| **Eco / Nature** | Green | Is the brand about nature, or about technology that helps nature? |
| **Tech / SaaS** | Blue | Does "trust" differentiate you, or does every competitor look the same? |
| **Finance** | Blue / Green | Is the audience traditional bankers, or Gen-Z investors? |
| **Health / Medical** | Blue / White | Is this a hospital app, or a wellness lifestyle product? |
| **Kids / Education** | Rainbow / Primary | Are the users children, or are they parents who prefer sophistication? |
| **Luxury** | Black + Gold | Is this genuine luxury, or aspirational mass-market? |

**The rule**: choosing the industry default is not wrong — choosing it without questioning is. A premium coffee subscription using warm brown is intentional. A generic food app using orange because "food = orange" is lazy.

---

### Mobile App Lazy Color Defaults

On app screens, AI slop often appears as the same active/accent color regardless of product:
- fluorescent green for active tabs, progress, or "success" moments
- generic blue for every primary CTA, link, and selected state
- Claude orange for warmth, food, productivity, or "friendly" accents

These colors are not individually banned; they are valid accent choices when used with restraint. They fail when they become automatic APP active/accent defaults without a brand reason, a saturation budget, and a supporting hue relationship. If you keep one, make the decision visible in the palette: tune saturation, give it a tonal active state, pair it with a distinct base/support color instead of coloring every important control the same way, and do not repeat them by habit across unrelated products.

---

### APP Material Anti-Patterns (Challenge, Don't Flatten)

Do not flatten every app into generic cards. High-quality component material is allowed and often necessary on mobile: translucent acrylic, frosted glass, dimensional media controls, rounded tactile cards, skeuomorphic knobs, vinyl discs, or physical album sleeves can make the product feel premium.

The banned failure is **cheap plastic 3D**: glossy toy icons, fake bevels on every control, unclickable rendered images pretending to be buttons, or shiny surfaces with no interaction state. A valid material component is an **interactive surface** with clear hit area, focus state, pressed/lifted feedback, and a real implementation path (CSS tokens, generated/sourced asset, or Three.js for real geometry).

**Rule:** base UI components stay restrained; expressive surfaces may be rich. If a component is not a signature product moment, keep its material quiet. If it is a signature moment, fully resolve the material instead of adding a random shadow, blur, or 3D-looking asset.

---

### ⛔ Layout Stereotypes (Lazy Design — IA-stage anti-pattern)

**This anti-pattern is checked at the VISUAL DIRECTION stage, not at audit.** When the visual-direction subagent decides the `Pages` and `Layout` fields of a direction option, it MUST avoid these defaults — the IA decision is where the stereotype gets baked in, not the styling.

| Product Type | Stereotype (Avoid) | Why it's bad |
|--------------|-------------------|--------------|
| **Dashboard** | Left sidebar + Top nav + Cards grid | Looks like every SaaS template |
| **E-commerce** | Hero banner + Product grid + Footer | Amazon/Shopify clone feel |
| **Social App** | Bottom tab bar + Feed + FAB | Instagram/TikTok clone feel |
| **Landing Page** | Hero → Features → Testimonials → CTA | Template website syndrome |
| **Chat App** | Left contacts + Right messages | WhatsApp/Slack clone feel |

**Action**:
1. **At visual-direction stage** (where IA is decided): if a direction's Layout / Pages defaults to one of these stereotypes, the direction has not yet earned its existence. Diversify — at least one of the 2-3 proposed directions MUST break the stereotype.
2. **At audit stage** (design-audit Category 6): if the final prototype matches a stereotype for its product type, that's a hard finding — flag it and recommend re-running visual direction.
3. **General rule**: Study the CONTENT and USER FLOW first. Let layout emerge from the visual direction's brand feel + IA, not from product-category templates.

---

### ⛔ Layout Implementation Anti-Patterns (Fragile Code)

**These are implementation failures that cause UI bugs (like text overflow).**

| Anti-Pattern | Description | Why it breaks | Fix |
|--------------|-------------|---------------|-----|
| **Hardcoded Widths** | `w-[200px]` | Content overflow on long text | Use `flex`, `min-w-0`, `truncate` |
| **Absolute Positioning** | `absolute left-10` | Overlaps when screen resizes | Use Flexbox/Grid (EXEMPT: Allowed for overlapping elements in Editorial/Bento layouts) |
| **Negative Margins** | `ml-[-20px]` | Unpredictable overlap | Use proper spacing/gap (EXEMPT: Allowed for intentional overlapping in modern genres) |
| **Missing Truncation** | No `truncate` | Text bleeds out of card | Add `truncate` class to text containers |
| **Magic Numbers** | `top-[37px]` | Breaks if font size changes | Use standard spacing tokens |

**The "Symmetric Layout" Trap**:
Attempting to align text symmetrically (e.g., `[Name] [Avatar] VS [Avatar] [Name]`) often fails if the left-side name is long.
- ❌ **Bad**: `flex-row-reverse` without width constraints.
- ✅ **Good**: `grid grid-cols-[1fr_auto_1fr]` with `truncate` on text columns.

---

### ⛔ Typography Stereotypes

| Context | Stereotype (Avoid) | Why it's bad |
|---------|-------------------|--------------|
| **"Modern" app** | Inter / SF Pro everywhere | Safe but zero personality |
| **"Premium" brand** | Thin weight + Massive spacing | Looks like every luxury template |
| **"Friendly" app** | Rounded sans-serif (Nunito, Quicksand) | Childish, lacks credibility |
| **"Tech" product** | Monospace for everything | Programmer aesthetic, not user-friendly |
| **Chinese product** | 思源黑体 / Source Han Sans for everything | Default, no brand identity. Almost every AI-generated Chinese UI converges on Source Han Sans / Noto Sans SC because they are the Google-Fonts CJK default — that itself is the AI tell. |

**Action**: Choose typography that reflects the BRAND VOICE, not the category expectation. For CJK products, pick a distinctive emfont family (e.g. `jfOpenHuninn` for friendly-rounded, `cwTeXMing` for editorial Ming, `ChironHeiHK` for Hong Kong-flavored Hei) — see `emfont-fonts` skill catalog at `https://font.emtech.cc/list`.

**Font Source Rule (MANDATORY — split by script)**:
- **Latin / non-CJK** families MUST come from Google Fonts (https://fonts.google.com/). Never use made-up font names, local-only fonts, or fonts from other services (Fontshare, Adobe Fonts, etc.) for Latin.
- **CJK** families (Simplified Chinese, Traditional Chinese, Japanese, Korean) MUST come from the **`emfont-fonts` skill** (https://font.emtech.cc). The previous rule that allowed Google-Fonts-hosted CJK families (`Noto Sans SC / TC / JP / KR`, `Noto Serif SC/TC/JP/KR`, `Source Han *`, `LXGW WenKai`, `ZCOOL XiaoWei`, `Long Cang`, `Ma Shan Zheng`) is **abandoned** — those are now FORBIDDEN. System CJK families (`PingFang`, `YaHei`, `Hiragino Sans`, `Meiryo`) are allowed ONLY as fallbacks after the emfont family in the `font-family` stack.

---

### ⛔ Icon Stereotypes

| Feature | Stereotype (Avoid) | Why it's bad |
|---------|-------------------|--------------|
| **Home** | 🏠 House icon | Overused, no brand personality |
| **Profile** | 👤 Person silhouette | Generic, seen everywhere |
| **Settings** | ⚙️ Gear icon | Mechanical, cold feeling |
| **Search** | 🔍 Magnifying glass | Expected but boring |
| **Like** | ❤️ Heart | Instagram clone signal |

**Action**: Consider custom icons or unexpected metaphors that align with brand personality.

---

### ⛔ Animation Stereotypes

| Interaction | Stereotype (Avoid) | Why it's bad |
|-------------|-------------------|--------------|
| **Page transition** | Slide left/right | Mobile 101, no personality |
| **Button hover** | Scale up 1.05x | Seen on every website |
| **Loading** | Spinning circle | Boring, anxiety-inducing |
| **Success** | Green checkmark bounce | Template animation |
| **Modal appear** | Fade + Scale from center | Default behavior |

**Action**: Design motion that reflects the MATERIAL METAPHOR of your brand.

---

### ⛔ Copy/UX Writing Stereotypes

| Context | Stereotype (Avoid) | Why it's bad |
|---------|-------------------|--------------|
| **Empty state** | "Nothing here yet" | Lazy, unhelpful |
| **Error message** | "Something went wrong" | Vague, frustrating |
| **CTA button** | "Get Started" / "Learn More" | Generic, low conversion |
| **Onboarding** | "Welcome to [App Name]!" | Boring first impression |
| **Loading** | "Loading..." | Wasted opportunity |

**Action**: Every piece of text is a brand touchpoint. Make it count.

### ✅ UX Writing Best Practices

**Button Labels -- Use verb + object:**

| Bad | Good | Why |
|-----|------|-----|
| OK | Save changes | Says what will happen |
| Submit | Create account | Outcome-focused |
| Yes | Delete message | Confirms the action |
| Cancel | Keep editing | Clarifies what "cancel" means |

For destructive actions, name the destruction: "Delete 5 items" not "Delete selected".

**Error Messages -- The three-part formula:**
Every error must answer: (1) What happened? (2) Why? (3) How to fix it.

| Situation | Template |
|-----------|----------|
| Format error | "[Field] needs to be [format]. Example: [example]" |
| Missing required | "Please enter [what's missing]" |
| Permission denied | "You don't have access to [thing]. [What to do instead]" |
| Network error | "We couldn't reach [thing]. Check your connection and [action]." |
| Server error | "Something went wrong on our end. We're looking into it. [Alternative action]" |

Never blame the user: "Please enter a date in MM/DD/YYYY format" not "You entered an invalid date".

**Empty States -- Make them useful:**
Empty states are onboarding moments: (1) Acknowledge briefly, (2) Explain the value of filling it, (3) Provide a clear action.

**Loading States -- Be specific:**
"Saving your draft..." not "Loading...". For long waits, set expectations ("This usually takes 30 seconds") or show progress.

**Terminology Consistency:**
Pick one term and stick with it across the entire product. Delete/Remove/Trash = pick one. Settings/Preferences/Options = pick one.

**Translation-Aware Writing:**
German text is ~30% longer than English, Chinese is ~30% shorter. Keep each translatable message as a single complete string with placeholders for variables -- never split a sentence into label + value fragments. Use ICU-style patterns when plural forms matter: `"{count, plural, one {# new message} other {# new messages}}"`. Avoid `"New messages: " + count` -- this breaks in languages where the number must appear mid-sentence, or where the surrounding words change form based on the number. Design UI layouts with ~40% text expansion headroom.

---

### ✅ Brand-First Design Process

**Before ANY design decision, ask:**

1. **What is the brand personality?** (Not the industry category)
2. **What emotion should users feel?** (Not what they "expect")
3. **How is this different from competitors?** (Not how it's similar)
4. **Would this work for a completely different industry?** (If yes, it's too generic)

**Example - Pet Food App:**
- ❌ Lazy: Orange color, paw print icons, playful rounded fonts, dog photos
- ✅ Brand-first: What if it's a *premium pet nutrition* brand? → Minimal white, scientific typography, ingredient photography, health-focused

**Example - Finance App:**
- ❌ Lazy: Blue color, shield icons, serious serif fonts, stock graphs
- ✅ Brand-first: What if it's for *Gen-Z investors*? → Bold colors, meme-friendly, casual voice, gamified elements

---

## Honest Copy (CRITICAL — AI tell)

**Definition:** the prototype's textual content must read like a real, shipped product would read at this exact stage of its lifecycle. Lazy filler copy (`Lorem ipsum`, `Card title`, `Description goes here`, `User Name`, `Acme Inc.`, `$1,234`, `+12.5%`, `John Doe`, `example@example.com`) is one of the strongest AI tells — stronger than purple gradients, because it survives even when the visual layer is good.

### ⛔ Banned Copy Patterns

| Pattern | Example | Why Banned |
|---------|---------|------------|
| **Filler Latin** | `Lorem ipsum dolor sit amet` | Unfinished. Has no place in a deliverable. |
| **Self-referential labels** | `Card title`, `Section heading`, `Description here`, `Button label` | Reveals the template. Real products show real things. |
| **Generic personas** | `John Doe`, `Jane Smith`, `User 1`, `@username` | Stock-photo of names. Real products show plausible diverse names. |
| **Round-number metrics** | `$1,000`, `1,234 users`, `+10.0%`, `100 items` | Real metrics are messy. `$1,247.83`, `1,238 users`, `+11.4%`. |
| **Generic company names** | `Acme Inc.`, `Example Corp`, `Company A/B/C` | Reveals placeholder. Use plausible-but-not-trademarked names. |
| **Generic feature names** | `Feature 1`, `Module A`, `Item Name` | Same problem. Decide what the feature actually does and name it. |
| **Time placeholders** | `Just now`, `2 hours ago` everywhere | Real feeds have a mix: `8m ago`, `Yesterday at 4:12 PM`, `Mar 14`. |
| **AI-default email domains** | `example@example.com`, `user@email.com` | Use plausible domains: `@gmail.com`, `@<company>.com`, `@<consumer-brand>.io`. |
| **Generic CTAs everywhere** | Every button says `Learn More` / `Get Started` / `Submit` | Real CTAs name the action: `Save draft`, `Send invoice`, `Schedule for Tuesday`. |
| **Empty-state stock copy** | `Nothing here yet`, `No data` | Empty state is an onboarding moment — see Empty State guidance below. |

### ✅ Honest Copy Rules

1. **Names are people-shaped.** First names match plausible cultural distributions for the product's region. Avoid `John Doe`. Use `Maya Okonkwo`, `Ren Tanaka`, `Sofía Vargas`, `Daniel Park`. Vary length (some short, some long — long names are the layout failure mode and you must show that you handled it).
2. **Numbers are observation-shaped.** Real metrics are not round. A SaaS dashboard shows `$24,738.12 MRR`, not `$25,000.00`. A fitness app shows `7,412 steps`, not `7,500`. A finance app shows `+1.83%`, not `+2.0%`. The exception: explicit goal targets (`Goal: $10,000`) which ARE round on purpose.
3. **Timestamps are mixed-resolution.** A list of N items should NOT all read `2 hours ago`. Mix `Just now`, `12m`, `3h`, `Yesterday`, `Mon`, `Mar 14`, `Feb 28, 2025`. Recency density is a content-strategy decision; show that you made it.
4. **Feature copy commits to the product.** If the product is a "team async standup tool," the dashboard cards say `Yesterday's blockers` / `Today's focus` / `Wins this week` — not `Card 1` / `Card 2` / `Card 3`. The visual-direction's `domain` field already locked in what the product is; the copy must honor it.
5. **CTAs name the action.** `Save draft`, `Send invoice`, `Schedule for Tuesday`, `Add to next sprint`, `Reply to thread`. Generic verbs (`Submit`, `Continue`, `OK`) are forbidden except for OS-level confirmation dialogs.
6. **Hero copy commits to a position.** A landing-page hero must say something that could not be re-used by a different product. `The fastest way to ship code` is generic. `Ship your changelog the moment you merge` commits.
7. **Email addresses are plausible.** `<firstname>@<plausible-domain>` matching the product's audience. No `example@example.com`. No `user1@test.com`.
8. **Company / org names** (when the prototype shows a customer list, an enterprise account picker, etc.) are a curated set of plausible-sounding names — not `Acme`, `Globex`, `Initech`. Mix sizes (a 4-person agency, a mid-market SaaS, an enterprise) so the rendered layout exercises the real density range.
9. **Empty states do work.** See Empty State template above — acknowledge briefly, explain the value, give a clear action. Never `No data`.

### ⛔ Honest Copy Audit Triggers (any one is a Critical finding)

- The string `Lorem` or `lorem` appears anywhere
- The same metric value appears in 3+ unrelated cards
- `John Doe` / `Jane Doe` / `John Smith` / `User 1` appears
- A timestamp appears more than 2× consecutively with the same value (e.g. all `2 hours ago`)
- A CTA reads `Submit`, `OK`, `Continue`, `Learn More`, or `Get Started` more than once on the same page
- An email address contains the substring `example.` (`example.com`, `example@`)
- A company name from `Acme | Globex | Initech | Hooli | Pied Piper | ExampleCorp` appears
- A label literally reads `Title`, `Description`, `Heading`, `Subtitle`, `Card`, or `Section`

---

## Re-drawn Chrome (CRITICAL — AI tell)

**Definition:** the prototype renders fake versions of OS / browser / device chrome **inside** its own page. The runtime already supplies real chrome — on desktop the real browser frame; on mobile/pad the preview wrapper (or the user's actual device shell) supplies status bar, home indicator, and bezel. Drawing a second set of chrome inside the prototype is duplication and the visual equivalent of putting a photo of a TV inside a TV. It is one of the most reliable signals that a designer has been thinking in mockup-mode rather than product-mode.

**This rule is breakpoint-agnostic.** It applies on desktop, tablet/iPad, and mobile breakpoints alike. A "fake mobile status bar" rendered in a mobile-breakpoint prototype is just as forbidden as one rendered on desktop — the preview wrapper / actual device already provides the real status bar, and your second one is duplicate chrome. The historical "desktop-only" framing of this rule was a gap; the live failure mode in irise's pipeline is precisely fake chrome drawn at mobile/pad breakpoint.

### ⛔ Banned Re-drawn Chrome Elements

**Browser / desktop-OS chrome (typically appears at desktop breakpoint, but forbidden everywhere):**

| Element | Description | Why Banned |
|---------|-------------|------------|
| **Fake browser frame** | A `<div>` shaped like a Chrome / Safari window, with a URL bar and tab strip drawn into the top of the page | This IS already a webpage. Drawing a webpage inside it is theatrical. |
| **Fake macOS traffic lights** | The red/yellow/green dot triplet at the top-left of a "window" inside the page | Pure mockup-shot decoration. Adds zero product affordance. |
| **Fake URL bar** | An input shaped like an address bar, often pre-filled with `https://yourapp.com` | Real users don't interact with a re-drawn URL bar. The browser already provides one. |
| **Fake browser tabs above the content** | Multiple tabs across the top of the page showing other "open sites" | The user's real browser already shows tabs. |
| **Fake desktop window chrome** | Title bar with minimize/maximize/close buttons (e.g., lucide `Minus` + `Square` + `X`) drawn into the page | Same as above. Either deliver an actual native window OR don't fake it. |

**Mobile-OS chrome (forbidden at every breakpoint, including native mobile breakpoint):**

| Element | Description | Why Banned |
|---------|-------------|------------|
| **Fake iOS status bar** | A row near the top of the prototype rendering a fixed time string (`9:41` / `09:41` / any hardcoded HH:MM) on the left and a signal-bars + Wi-Fi + battery icon cluster on the right | The preview wrapper / actual iOS shell already shows the real status bar. Drawing a second one creates a double-status-bar stack visible in every irise mobile preview. |
| **Fake Android status bar** | Same shape as above (clock + signal/Wi-Fi/battery cluster), with Material-style icons or notification glyphs drawn near the top | Same as above. Android shell renders its own status bar. |
| **Fake Dynamic Island / notch cutout** | A black pill or oval centered at the top-edge of the prototype, sometimes with fake call/timer/music indicators inside | The Dynamic Island is iOS hardware-level chrome. The prototype cannot replicate it; rendering one is mockup decoration only. |
| **Fake iOS home indicator** | The horizontal pill at the bottom of the prototype, often `<div className="w-32 h-1 bg-black rounded-full">` | iOS already renders the home indicator above the prototype's viewport. A second one inside the page is duplicate. |
| **Fake Android navigation bar** | The 3-button row (back / home / recents) or the gesture pill drawn at the bottom of the prototype | Android shell provides this; rendering it inside the prototype is duplicate. |
| **Phone bezel / device frame around the entire page** | The whole prototype rendered inside a `<div>` shaped like an iPhone with rounded corners + notch + bezel border | Mockup-shot pattern. The deliverable is a working prototype, not a marketing mockup. |

**Tablet / iPad chrome (forbidden at tablet/pad breakpoint):**

| Element | Description | Why Banned |
|---------|-------------|------------|
| **Fake iPadOS status bar** | A wide top row with time on the left, signal/Wi-Fi/battery on the right, sometimes with a centered focus indicator or AirPods badge | iPadOS shell renders this; duplicating it inside the canvas adds nothing. |
| **Fake iPadOS multitasking handle** | The small horizontal pill at the top-center of the screen used to invoke Stage Manager / Split View | Hardware-level chrome — the prototype cannot interact with it. |
| **Fake iPadOS home indicator** | Same as iOS home indicator but at iPad dimensions | Duplicate of real iPadOS chrome. |
| **iPad bezel / device frame around the page** | Whole prototype wrapped in an iPad-shaped frame with rounded corners + camera dot | Same as phone bezel — mockup-shot pattern. |

### ⚠️ The single legitimate exception

When the **product itself** is a browser, an OS preview tool, a device emulator, a screen-sharing surface, or a design tool that shows website previews (e.g., a Figma-like canvas where the artboard IS a fake browser), then a re-drawn browser/OS chrome is part of the product's content surface and is fine. In every other case, rendering chrome is forbidden.

This exception is narrow. If you are tempted to invoke it, read the product domain again — odds are very high the product is NOT a browser or device emulator and the chrome is decorative.

### ✅ Replace with

| Instead of fake chrome | Use |
|------------------------|-----|
| Fake browser frame around a desktop prototype | Render the prototype edge-to-edge in the actual viewport. Let the real browser be the frame. |
| Fake iOS / Android status bar at any breakpoint | Render the prototype starting from the real top of the viewport (apply `padding-top: env(safe-area-inset-top)` if you need to respect iOS safe area). The preview wrapper / device shell already provides the real status bar above. |
| Fake home indicator / Android nav bar at the bottom | Render content to the real bottom edge (apply `padding-bottom: env(safe-area-inset-bottom)` for iOS safe area). The real home indicator / nav bar lives above the prototype's viewport. |
| Fake URL bar showing the product's domain | If you need to communicate "this is a webapp at <domain>", do it in the documentation around the prototype, not inside the prototype. |
| Phone bezel / iPad bezel mockup wrapping the design | Render the design at the native breakpoint with real responsive behavior. The preview wrapper renders the actual device shape; do not redraw it inside. If a marketing mockup is needed, that is a separate deliverable. |
| Fake Dynamic Island / notch cutout | Reserve `padding-top: env(safe-area-inset-top)` so content does not collide with the real notch — do NOT draw a black pill yourself. |

### ⛔ Re-drawn Chrome Audit Triggers (any one is a Critical finding)

**Browser / desktop-OS triggers:**
- A `<div>` near the top of the page contains 3 small circles colored red/yellow/green (`bg-red-*`, `bg-yellow-*`, `bg-green-*`) within ~20px of each other → fake macOS traffic lights
- An `<input>` or `<div>` near the top of the page contains a hardcoded `https://` or `www.` string as static decoration → fake URL bar
- A `<div>` near the top contains tab-shaped sub-elements with site names or favicons that aren't part of the product's own tab feature → fake browser tabs
- A title-bar element contains three icons in the pattern minimize / maximize / close (lucide `Minus` + `Square` + `X`, or similar) → fake desktop window chrome

**Mobile / pad triggers (apply at any breakpoint, including native mobile/pad — this is the gap the original rule missed):**
- The prototype contains the literal string `9:41` or `09:41` (or any other fixed `HH:MM` in a status-bar position near the top edge) → fake iOS / iPadOS status bar
- A row near the top edge contains BOTH a signal-bar icon (`Signal`, ascending bars, or `bg-current` cluster of 3-4 vertical bars) AND a battery icon (`Battery`, `BatteryFull`, rectangle-with-tip shape) within the same flex/grid → fake mobile status bar
- A row near the top contains a Wi-Fi icon (`Wifi`, fan-shaped arc) + battery icon together as a static cluster → fake mobile status bar (Wi-Fi + battery is the dead giveaway combination)
- The prototype's outermost wrapper has a `border-radius` ≥ 32px AND fixed dimensions matching a phone aspect ratio (e.g., 390×844, 9:19.5) or iPad aspect ratio (e.g., 820×1180) → phone / iPad bezel
- A black pill / oval shape with `border-radius` ≥ 9999px is centered horizontally near the top edge of the prototype → fake Dynamic Island / notch cutout
- A horizontal `bg-black` / `bg-white` pill of width roughly 30-40% of viewport, height ≤ 6px, anchored to the bottom edge → fake iOS home indicator
- A row near the bottom edge contains 3 icons in the pattern back / home / recents (lucide `ChevronLeft` + `Circle` + `Square`, or triangle/circle/square Material glyphs) → fake Android navigation bar

When any of the above appear, treat as Critical and route to the write-code stage with: "Remove the re-drawn `<element>`. The prototype is rendered inside an actual browser or preview wrapper that already supplies real chrome; your second copy is duplicate. Render the product content edge-to-edge, using `env(safe-area-inset-*)` for iOS safe-area padding when needed."

---

## Icon Anti-Patterns

### ⛔ Banned Icon Styles

| Type | Description | Why Banned |
|------|-------------|------------|
| **Cheap Neon Glow Icons** | Icons with cheap neon glow/outer shadow effects | Cheap "tech" feel, dated |
| **High-contrast Rainbow Gradients** | Multi-color high-contrast gradient fills | AI-generated signature |
| **Plastic 3D** | Shiny, glossy 3D with reflections | 2015-2018 dated style |
| **Star Decorations** | ✨ sparkles around icons | AI-generated signature |
| **Deep Background + Neon Border** | Dark plate with neon outline | Cheap cyberpunk cliché |
| **Emoji Style** | Cartoon emoji-like icons | Unprofessional |
| **Over-Detailed** | Too many lines/details | Unreadable at small sizes |
| **Inconsistent Weight** | Mixed stroke widths | Visual chaos |

### ⛔ Icon Colors to Exclude

```
REMOVE FROM PALETTE:
- Neon Cyan: #00F0FF, #00FFFF
- Neon Pink: #FF6B9D, #FF00FF
- Neon Purple: #A855F7, #9333EA with glow
- Any color with outer glow/shadow
- Rainbow/multi-color within single icon
```

### ⛔ Banned Icon Sources

| Source | Reason |
|--------|--------|
| **Flaticon** | Quality varies, overused, no consistency |
| **Freepik** | Free tier is low quality |
| **IconFinder** | Flooded with 3D/gradient garbage |
| **AI-Generated** | All AI icons banned without exception |
| **Noun Project (free)** | Inconsistent styles |
| **Iconfont (阿里)** | Mixed quality, style chaos |

### ✅ Icon Quality Standards

All icons MUST meet these criteria:

```
Required:
- Single color (or brand color only)
- No glow, no shadows, no gradients
- Uniform stroke weight: 1.5px or 2px
- Pixel-perfect grid alignment: 24×24 or 20×20
- Round or square caps (consistent globally)
- From approved libraries only
```

---

## Logo Anti-Patterns

### ⛔ Banned Logo Characteristics

| Characteristic | Description | Why Banned |
|----------------|-------------|------------|
| **Pink-Cyan Gradient** | Rounded rect with #FF6B9D → #00F0FF | AI default style |
| **Plastic Glossy** | High-gloss reflection/shine | Dated, cheap 3D |
| **Sparkle Decorations** | ✨ stars around logo | AI signature |
| **Abstract White Symbol** | Meaningless white lines on gradient | No brand meaning |
| **Over-Rounded** | Everything extremely rounded | Lacks design tension |
| **Gradient Stroke** | Rainbow edges/outlines | Over-decorated |

### ⛔ The "AI Logo" Formula (DISCARD ENTIRELY)

```
REMOVE ALL OF THESE:
Rounded rectangle (gradient background)
+ White abstract symbol (stars/waves/geometric)
+ Sparkle decorations (✨)
+ Plastic glossy texture
= Obvious AI-generated appearance
```

### ✅ Logo Quality Standards

All logos MUST:

- Work in pure black or white (monochrome test)
- Be recognizable at 16px (favicon test)
- Have clear meaning explainable in one sentence
- Avoid dependency on gradients for recognition
- Use geometry based on simple shapes

---

## Color Anti-Patterns

### ⛔ Banned Color Combinations

| Combination | Hex Values | Why Banned |
|-------------|------------|------------|
| **Pink → Cyan gradient** | #FF6B9D → #00F0FF | AI signature |
| **Purple → Blue neon** | #A855F7 → #3B82F6 with glow | Cheap tech |
| **Rainbow gradient** | Any multi-color rainbow | AI signature |
| **Neon on dark** | Bright neon on #0D0D0D | Overused, harsh (EXEMPT: Allowed in Acid Design/Neo-brutalism) |
| **Violet/Lavender primary** | #A78BFA, #8B5CF6, #7C3AED | AI's default "premium" |
| **Deep purple background** | #0D0B1A, #1A1625, #2D2640 | Cyberpunk cliché |

### ⛔ Color Effects to Remove

Remove all of these from your design:
- Outer glow on any element
- Inner glow for "premium" feel
- Gradient fills on icons
- Multiple gradients in one view
- Neon colors (#00FFFF, #FF00FF, #00FF00)
- Colored border glow on dark backgrounds
- Purple/blue tinted shadows
- Gradient borders (border-image with gradient)

### ⛔ Color Usage Violations

| Violation | Description | Fix |
|-----------|-------------|-----|
| **Brand color overload** | >15% of surface area | Limit to 8-12% |
| **Non-semantic red** | Red used for non-error/non-warning | Reserve red for alerts |
| **Low contrast text** | Gray on white below 4.5:1 | Use #666 minimum |
| **Competing accents** | Multiple high-saturation colors fighting | One primary accent, use lightness variations for hierarchy |
| **Dark mode purple tint** | Purple-tinted backgrounds/surfaces | Use neutral or color-temperature-tinted darks without purple hue |

### ⛔ The "AI Purple" Trap

Purple/violet as primary accent is the **#1 AI-generated design signature**. AI models default to purple for "premium" or "modern." This makes purple-on-dark the strongest possible AI detection signal.

**When purple IS acceptable**: the product has an established purple brand identity (e.g., Twitch, Figma's gradient), or the reference the user provided already uses purple. In these cases, the purple is intentional, not a default.

**When purple is NOT acceptable**: you chose purple because it "feels premium" or "looks modern" without a specific brand reason. This is the AI default behavior — reject it.

---

## Placeholder Anti-Patterns

### ⛔ Banned Placeholder Types

| Type | Description | Why Banned |
|------|-------------|------------|
| **Emoji** | 😀 🎉 📱 as icons/decoration | Unprofessional |
| **Cartoon Illustrations** | Free cartoon characters | Cheap, no brand fit |
| **Wireframe X-Box** | Rectangle with X for images | Looks unfinished |
| **Gray Rectangles** | Solid gray image placeholders | Lazy design |
| **Lorem Ipsum** | Latin filler in high-fidelity | Unrealistic |
| **Stock Smiles** | Obviously staged stock photos | Fake, untrustworthy |
| **"Image" Text** | Word "Image" as placeholder | Amateur |

### ⛔ Banned Avatar Types

| Type | Description | Why Banned |
|------|-------------|------------|
| **Generic Cartoon** | Free cartoon character avatars | Cheap, no personality |
| **AI-Generated Cartoon** | AI cartoon/anime avatars | Obviously AI |
| **Emoji Avatars** | 😀 as profile picture | Unprofessional |
| **Free Stock Avatar** | Flaticon/Freepik avatars | Overused, cheap |
| **Outdated 3D** | 2015-era 3D characters | Dated |

### ✅ Approved Placeholder Solutions

| Use Case | Solution |
|----------|----------|
| **Image placeholder** | BlurHash / ThumbHash |
| **Avatar placeholder** | Boring Avatars, DiceBear, initials |
| **User photos** | Real photos or geometric abstract |
| **Loading** | Skeleton matching content layout |
| **Text placeholder** | Realistic fake content |

### ✅ Real Image Acquisition

When an interface needs images, source or create assets that depict the actual subject. Valid paths:
- User-provided or brand-owned assets.
- Official product pages, media kits, app screenshots, or source-owned content.
- `websearch` / image search for domain-specific photography or screenshots.
- Dribbble, Behance, Mobbin, or UINotes for design artwork and UI reference images.
- Unsplash, Pexels, Wikimedia, or similar sources for real photography when the product needs photographic content.
- Generated bitmap assets when no suitable real asset exists, as long as the image clearly depicts the subject.

If no credible image can be sourced or generated, remove the image slot or use a non-image layout. Do not fill the slot with gray rectangles, abstract gradient meshes, generic laptop mockups, or decorative SVGs pretending to be content.

---

## Layout Anti-Patterns

### ⛔ Information Density Issues

| Issue | Description | Fix |
|-------|-------------|-----|
| **Over 7 actions** | Too many primary CTAs on screen | Group and fold, reduce 15-30% |
| **Buried high-frequency** | Core features in hamburger menu | Surface to main nav |
| **Tab overflow** | >5 bottom tabs, or scrollable tabs | Max 5, use "More" |
| **Dead zones** | CTA in thumb-unreachable areas | Bottom 1/3 for primary actions |

### ⛔ Navigation Issues

| Issue | Description | Fix |
|-------|-------------|-----|
| **No back button** | User cannot return | All pages must support back |
| **Drawer treasure** | Core features hidden in side menu | High-frequency on main screen |
| **Mixed transitions** | Left-slide and up-slide mixed | Consistent direction system |

### ⛔ Responsive Issues

| Issue | Description | Fix |
|-------|-------------|-----|
| **Fixed columns** | No breakpoint adaptation | Implement device-adaptive grid |
| **Waterfall misuse** | Structured data in masonry | Use grid for comparisons |
| **Dense touch targets** | >3 clickable areas in list item | Max 2 per item |

---

## Typography Anti-Patterns

### ⛔ Text Violations

| Issue | Criteria | Fix |
|-------|----------|-----|
| **Tiny text** | Body <14sp | Minimum 14sp body |
| **Thin on dark** | Light weight on dark backgrounds | Regular or higher |
| **Low contrast** | Gray (#999) on white | Minimum 4.5:1 ratio |
| **Mixed systems** | Different fonts for same purpose | Unified type scale |
| **Improper CJK** | Chinese/English weight mismatch | Match visual weight |

### ⛔ Character Usage

| Issue | Fix |
|-------|-----|
| **Full-width numbers** | Use half-width numbers |
| **Full-width punctuation in mixed text** | Use half-width with Latin |
| **Inconsistent quotes** | Standardize quote style |

---

## Interaction Anti-Patterns

### ⛔ Feedback Issues

| Issue | Description | Fix |
|-------|-------------|-----|
| **Dead buttons** | No visual change on press | Scale/highlight on interaction |
| **Silent errors** | Red border only, no explanation | Text explanation + fix suggestion |
| **Rogue modals** | Full-screen blocking, no close | Support swipe-to-close, clear close button |
| **Auto-loading popups** | Unexpected modals on page load | User-initiated only |

### ⛔ Motion Issues

| Issue | Description | Fix |
|-------|-------------|-----|
| **Inconsistent timing** | Random duration/easing | Global motion tokens, ±20% variance max |
| **Mixed directions** | Conflicting enter/exit directions | Consistent spatial model |
| **Excessive animation** | Everything animates | Meaningful motion only |
| **Jarring transitions** | No easing, instant snaps | Proper easing curves |

---

## Accessibility Violations

### ⛔ Must-Fix Issues

| Issue | WCAG | Fix |
|-------|------|-----|
| **Text contrast <4.5:1** | AA | Increase contrast ratio |
| **Touch target <44pt** | 2.5.5 | Minimum 44×44pt hit area |
| **No focus indicator** | 2.4.7 | Visible focus ring |
| **Color-only feedback** | 1.4.1 | Add text/icon indicators |
| **No alt text** | 1.1.1 | Describe all images |
| **Keyboard trap** | 2.1.2 | Escape must work |

### ⛔ Contrast Requirements

| Element | Minimum Ratio |
|---------|---------------|
| Normal text | 4.5:1 |
| Large text (18pt+) | 3:1 |
| UI components | 3:1 |
| Focus indicators | 3:1 |

---

## Quick Reference: Audit Checklist

Before finalizing any design, verify:

### AI Detection (CHECK FIRST)
- [ ] Reject all banned combination patterns (see AI-Generated Style Signatures section)
- [ ] No purple-tinted dark backgrounds
- [ ] Discard glassmorphism with glow borders
- [ ] No high-contrast gradient buttons (purple-blue, pink-cyan, rainbow)
- [ ] Discard "cyberpunk dashboard" aesthetics
- [ ] Remove neon text/glow elements
- [ ] **Can you name a real, shipped product that looks like this?**

### Icons
- [ ] Use single color only
- [ ] Source from approved libraries only
- [ ] Keep consistent stroke weight (1.5-2px)
- [ ] Exclude emoji and AI-generated icons

### Colors
- [ ] Reject banned combination patterns (purple+dark, blue+purple, pink+cyan, neon+glow)
- [ ] Remove all neon glow effects
- [ ] Limit brand color to 8-12% of surface
- [ ] Ensure all text meets 4.5:1 contrast
- [ ] Dark backgrounds have no purple tint
- [ ] Can you name a shipped product with this palette? If not, reconsider

### Logo
- [ ] Ensure logo works in monochrome
- [ ] Ensure logo is clear at 16px
- [ ] Remove gradient dependency
- [ ] Discard sparkle decorations

### Layout
- [ ] Limit to <7 primary actions visible
- [ ] Surface core features to main nav
- [ ] Ensure touch targets ≥44pt
- [ ] Include back navigation on all pages

### Typography
- [ ] Set body text ≥14sp minimum
- [ ] Use regular+ weight on dark backgrounds
- [ ] Match CJK/Latin visual weights

### Interaction
- [ ] Add feedback to all buttons
- [ ] Include explanations with errors
- [ ] Ensure modals can be closed
- [ ] Keep motion timing consistent

---

## The Golden Rule

> **If it looks like a sci-fi movie interface, a gaming dashboard, or something from Blade Runner — DELETE IT AND START OVER.**
> 
> Professional design is **invisible**. It serves the content, not the aesthetic ego of the designer (or AI).
> 
> **Reference products to study** (rotate across the pool; do NOT lock to the first 2-3 names): Notion, Spotify, Arc, Things 3, Figma, Airbnb, Raycast, Craft, Superhuman, Duolingo, Bear, Telegram, Apple, Linear, Stripe, Vercel. Study them for the RANGE of valid approaches, not to copy a single one. Discard Dribbble "dark dashboard" shots as references.
