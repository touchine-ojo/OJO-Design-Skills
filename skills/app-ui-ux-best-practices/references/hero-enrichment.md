# Hero Enrichment Reference

This reference is consumed by the `design-dna` and `write-code` sub-agents when the prototype's information architecture includes a hero / above-the-fold surface (landing pages, marketing sites, content app entry pages, branded e-commerce home, magazine-style editorial fronts).

**Why this exists.** AI prototype generators converge on the same hero shape: a centered headline with a 2-line subhead and one accent button on a flat surface. This is the lowest-effort hero — it works for everything and commits to nothing. A real shipped product earns its hero by deciding what *kind* of hero it is. This reference forces that decision by introducing a discrete tier ladder (0 / A / B / C / D / E), each tier matched to brand archetype keywords, and explicit anti-patterns.

---

## Tier ladder

The tiers are ordered by ambition and production cost. A higher tier is not better in the abstract — it is better only if the brand earns it. Most utility products correctly belong in Tier 0; pushing them to Tier D produces theatrical AI slop.

| Tier | Hero archetype | Production weight | When it fits |
|------|----------------|--------------------|--------------|
| **0** | No hero | None — page begins with the working surface | Utility apps, dashboards, internal tools, B2B SaaS where the product IS the value prop. The user logged in to do work, not to be sold to. |
| **A** | Editorial type-only | Light: typography + spacing | Content / writing / publishing products, editorial brands, focus-coded brands (whether quiet-minimalist or bold-raw poster). The hero IS the typography. |
| **B** | Hero + single strong image | Medium: one curated photograph or illustration | Lifestyle, commerce, hospitality, food, travel, fitness — products where the *thing* is visual and the user wants to see it. |
| **C** | Editorial composition | Heavy: structured asymmetric layout, multiple anchored elements | Magazine / journalism, premium D2C, design tools, products that earn editorial design through curated content. |
| **D** | Motion / video / animated medium | Heavy: video, scroll-driven, or generative motion | Creative tools, agencies, immersive branded experiences, products whose differentiator is motion behavior itself. |
| **E** | Full-bleed immersive | Heaviest: WebGL / 3D / parallax / scene-based | Hardware launches, flagship marketing for visually-demanding products, art / music / fashion releases. **Almost always wrong** — the gravitational pull toward this tier is itself the AI tell. |

---

## Decision tree

Walk this top-down. Stop at the first branch that fires. **If you reach the bottom, the answer is Tier 0.**

1. **Is the user already inside a product surface?** (post-login dashboard, app home, settings, any utility view)
   → **Tier 0.** No hero. Start with the working surface. Stop.

2. **Does the page exist primarily to perform a transactional action?** (signup, checkout, single-form lead capture)
   → **Tier 0** for the form-dominant variant; the form IS the hero. Optional: Tier A for a one-line value-prop above the form. Stop.

3. **Is the product domain in this list?** SaaS-utility, dev tools, B2B internal tools, admin panels, finance dashboards, analytics, project management, ticketing, CRMs.
   → **Tier 0** for the in-app pages. **Tier A** allowed only on the marketing landing page if the brand is focus-coded (whether quiet Linear/Vercel pattern or raw-rebellious poster pattern). Default: **Tier 0**. Stop.

4. **Does the brand-keywords list (from `contextSummary.brand` / Feeling Keywords) include any of these?**

   | Brand keyword cluster | Tier hint |
   |--|--|
   | "editorial", "writerly", "calm", "considered", "focus-coded", "literary", "scholarly", "publishing" | **A** |
   | "sensory", "tactile", "appetite", "lifestyle", "wanderlust", "lush", "cozy", "warm", "handmade", "artisan" | **B** |
   | "magazine", "curated", "auteur", "editorial-design", "art-directed", "fashion", "high-tension-D2C", "bold-collage" | **C** |
   | "kinetic", "playful", "expressive", "creative-tool", "studio", "motion-first", "agency", "experiential" | **D** |
   | "raw", "distortion", "underground", "street", "punk", "zine", "grunge", "rebellious", "industrial", "protest", "loud" | **C** (poster/collage pattern) or **D** if motion-first — never smooth these into A/B |
   | "flagship-launch", "hardware-reveal", "art-installation", "sensorial", "exhibit", "release" | **E** (verify the brand earns it before committing) |

   → Apply the tier hint. If multiple clusters fire, choose the **lower** tier (cheaper, more defensible). Stop.

5. **Default fallback** (no clear brand signal, generic landing page).
   → **Tier A**. Editorial type-only. The cheapest hero that still commits to a position.

---

## Tier A — Editorial type-only

**The shape.** A single dominant headline, set in a display face, with deliberate weight / tracking / line-break decisions. Optional: a single short subhead (≤ 12 words) and at most one inline link (not a button-shaped CTA — a typographic link). No image. No video. No background gradient pretending to be content.

**What it MUST do**:
- The headline commits to a position that a different product could not reuse. ("Ship your changelog the moment you merge" — not "The fastest way to ship code".)
- Typography character is intentional: a serif / a humanist sans / a mono — not Inter Regular at 48px.
- Whitespace is doing work. The headline is anchored asymmetrically (off-center, with a clear empty quadrant) OR fills the frame edge-to-edge with a deliberate left-rag.
- Type scale used: the theme's `display` role MUST land at the top of its scale (≥ 60px on desktop / ≥ 36px on mobile). The hero does NOT introduce a new size outside the theme's type-scale ladder. If the existing `display` size is too small, raise the entire scale's top step in `theme.json` so the ladder remains coherent — do not hardcode a one-off pixel value just for the hero.

**What it MUST NOT do**:
- Centered headline + centered subhead + centered button → this is the AI default. Forbidden. If you want Tier A and a button, anchor the button typographically (link-style or sharp-edge solid), never a pill-button hovering at center.
- Generic copy: "Welcome to <product>", "Your <noun> reimagined", "The future of <category>". All forbidden. See `anti-patterns.md` § Honest Copy.

**Component recipe sketch** (token-driven — these are SKETCH placeholders; the write-code sub-agent MUST replace every size / spacing / color literal below with the matching theme token before emitting code; see § "Recipe sketches are token sketches, not literal output" at the end of this file):
```
<section class="px-[var(--spacing-section-x)] py-[var(--spacing-section-y)]">
  <h1 class="font-display text-[length:var(--font-size-display)] leading-[var(--line-height-display)] tracking-[var(--letter-spacing-display)] max-w-[18ch]">
    {{committed_headline}}
  </h1>
  <p class="mt-[var(--spacing-stack-md)] max-w-[32ch] text-[length:var(--font-size-body-lg)] text-[color:hsl(var(--color-text-muted))]">
    {{specific_subhead}}
  </p>
  <a class="mt-[var(--spacing-stack-lg)] inline-block underline underline-offset-[6px] decoration-[1.5px] text-[length:var(--font-size-body)]">
    {{named_action}} →
  </a>
</section>
```
> Tokens used (must exist in `theme.json` and be materialized in `:root` per write-code §1.2): `--font-size-display`, `--line-height-display`, `--letter-spacing-display`, `--font-size-body-lg`, `--font-size-body`, `--color-text-muted`, `--spacing-section-x`, `--spacing-section-y`, `--spacing-stack-md`, `--spacing-stack-lg`. If the theme uses Tailwind v4 `@theme` with role utilities (`text-display`, `pt-section`, `mt-stack-md`), prefer those — but never substitute raw `text-[64px]` / `mt-12` / `py-32` literals.

---

## Tier B — Hero + single strong image

**The shape.** One curated photograph or illustration carrying the visual weight, with typography in supporting role. The image is the product — not stock smiles, not generic abstract gradients, not AI-generated slop.

**What it MUST do**:
- The image is *of the actual subject* (the actual food, the actual workspace, the actual garment, the actual landscape). If the subject is software, the image is the product UI in a specific context — not a Dribbble-ish floating-card mockup.
- Image and type are composed, not stacked. Common compositions: image-left / type-right (60/40), image-fullbleed / type-overlaid (with a contrast strategy), image-as-bg / type-anchored-corner.
- Image has photographic authority: real depth-of-field, real lighting, real grain. Flat illustration is also valid IF it has illustrator authorship style (not generic vector clip-art).

**What it MUST NOT do**:
- Generic stock photography (smiling people in blank offices, shaking-hands, generic-laptop-on-desk).
- AI-generated "premium" imagery with the AI-glossy texture tell.
- Image set as a background with a 60% black overlay and centered white text → this is the lazy fallback when the image is too noisy. Either find a real image or move down to Tier A.

**Component recipe sketch** (token-driven — replace every size/spacing literal with the theme token before emitting; see § "Recipe sketches are token sketches" at end of file):
```
<section class="grid md:grid-cols-[1fr_1.2fr] min-h-[80vh]">
  <div class="flex flex-col justify-end p-[var(--spacing-section)]">
    <h1 class="font-display text-[length:var(--font-size-h1)] leading-[var(--line-height-h1)] tracking-[var(--letter-spacing-h1)]">{{headline}}</h1>
    <p class="mt-[var(--spacing-stack-sm)] max-w-[40ch] text-[length:var(--font-size-body)] text-[color:hsl(var(--color-text-muted))]">{{specific_subhead}}</p>
    <div class="mt-[var(--spacing-stack-lg)]"><button class="...primary">{{named_action}}</button></div>
  </div>
  <figure class="relative">
    <img src="..." class="absolute inset-0 w-full h-full object-cover" />
  </figure>
</section>
```
> Tokens used: `--font-size-h1`, `--line-height-h1`, `--letter-spacing-h1`, `--font-size-body`, `--color-text-muted`, `--spacing-section`, `--spacing-stack-sm`, `--spacing-stack-lg`. The theme's H1 size — not a one-off Tailwind step — is what the hero uses; if you would otherwise reach for `text-7xl`, raise the H1 size in the theme so all H1s on the site benefit.

---

## Tier C — Editorial composition

**The shape.** An anchored asymmetric layout where multiple elements (a large headline, one or two photographs, a pull-quote, a metadata strip) are composed using editorial / magazine logic. There is no template — every Tier C hero is bespoke to the brand.

**What it MUST do**:
- A primary anchor (usually the headline) and at least two secondary anchors (image + pull-quote, or two images + metadata).
- A baseline grid that the elements snap to — visible or implied. A consistent vertical rhythm.
- Typography earns a multi-style hierarchy by reusing the theme's existing roles + weights + tracking + case-treatment, NOT by adding new typeface families. Default Tier C uses **2 families**: `font-display` (headline) + `font-body` (eyebrow / pull-quote / metadata). Hierarchy comes from role + weight + tracking + uppercase/small-caps treatment within those two families. Examples of valid 2-family multi-style: display-serif `h1` (700 weight) + body sans `eyebrow` (uppercase, wide tracking, small caption size) + body sans `metadata` (medium weight, tabular-nums).
- A **third typeface family (typically mono)** is permitted ONLY when the brand keywords explicitly include `code` / `dev` / `developer` / `technical` / `engineering` / `terminal` / `data-driven` / `editorial-with-mono-DNA`. If the third family is used, it MUST be declared as `theme.typography.fontFamily.mono` and consumed via `font-mono`. Adding a third family without a brand-keyword justification is FORBIDDEN — it creates the "AI threw 3 typefaces at the page" tell.
- Editorial whitespace: at least one large empty zone (≥ 25% of the hero area) that anchors the composition.

**What it MUST NOT do**:
- A 3-column equal-grid card row → this is a Features section, not an editorial hero.
- "Magazine-look" applied as decoration on top of a stock landing structure → if you can extract the same content into a generic hero / features / testimonials sequence, it is not Tier C.

---

## Tier D — Motion / video / animated medium

**The shape.** Motion is the hero's primary content. Either: a curated background video of the actual subject (≤ 15s loop, ≤ 2MB encoded, with an immediate poster frame), or scroll-driven animation that reveals product detail, or generative motion (canvas / WebGL noise field, audio-reactive, generative type) that materializes the brand's kinetic identity.

**What it MUST do**:
- Motion has narrative — there is a beginning, a sustained middle, and a settled end-state. It is not a 3-second loop of generic shimmer.
- A high-quality static poster frame loads first. The motion is progressive enhancement.
- `prefers-reduced-motion` is respected: motion-disabled users see the static frame with full message intact.
- Motion serves Feedback / Guidance / Continuity / Brand Expression (per Motion Purpose Test). Decoration-only motion fails the gate.

**What it MUST NOT do**:
- Auto-playing video with sound.
- Particle background drifting forever with no narrative.
- Cursor-following 3D tilt as the hero's central feature ("oooh interactive" without purpose).
- Scroll-jacking that prevents the user from reaching content.

**Performance budget**:
- LCP ≤ 2.5s — the poster frame must be in this budget; the video is allowed to load after.
- Motion runs at 60fps on a 2020-era mid-tier laptop / mid-tier mobile.
- WebGL / Canvas: dispose resources on unmount; cap DPR at 2; lazy-load on first viewport intersection.

---

## Tier E — Full-bleed immersive

**The shape.** WebGL scene, 3D model, parallax landscape, audio-visual installation. The hero is a destination experience.

**Reaching for Tier E is itself a signal.** Before committing, the design-dna sub-agent must answer **all three** of:
1. Is this a flagship / launch / release moment, not a permanent state of the marketing site?
2. Does the brand have a documented track record of immersive work at this level (i.e., the user's reference brand is Apple/Nike/Bottega/Linear-launch-page tier, not "we want it to feel premium")?
3. Is there a credible content asset (a real 3D model, a real video, a real photographic landscape) — NOT generated decoration?

If the answer to any is no, **drop to Tier C or D**. The Tier E temptation is the failure mode this reference exists to prevent.

When Tier E is genuinely earned, treat it as a custom production — most of the rules in this file are reference-only at that point and the design-dna sub-agent should generate per-asset specs in the theme-guide rather than a generic recipe.

---

## Anti-patterns (apply to ALL tiers)

The following are forbidden regardless of which tier is selected:

- **Centered-headline + centered-subhead + centered-pill-button on flat background.** The AI default. Always wrong.
- **"Trusted by" logo grid in the hero.** Move to a sub-section below the fold. The hero commits to one position; the logo grid hedges.
- **Two CTAs side-by-side (`Get Started` + `Learn More`).** The hero must commit to ONE primary action. A secondary link, fine — a second equally-weighted button, never.
- **Stock vector illustration of a generic person at a laptop.** This is a 2020 trope. Forbidden.
- **AI-generated decorative imagery.** The slop tell. Use real photography, real illustration, or no image.
- **Generic gradient mesh background as the hero's only visual element.** If the gradient is the hero, it is a Tier 0 page that is pretending to be Tier B. Either earn a real Tier B image or commit to Tier A type-only.
- **Hero text reading "Welcome to <product>".** Unconditionally banned. The hero must commit to what the product *does for the user*, not greet them.
- **Chrome / device frame around the hero.** See `anti-patterns.md` § Re-drawn Chrome. Forbidden.

---

## Output contract — what the design-dna sub-agent records

When the IA includes a hero, the sub-agent must add the following to `theme.json` so the write-code sub-agent has unambiguous instructions:

```json
"hero": {
  "tier": "A",
  "rationale": "<one sentence: why this tier given the brand keywords / domain>",
  "primary_action": "<verb-phrase, e.g. 'Schedule a demo'>",
  "secondary_action": "<optional, link-style only>",
  "asset_spec": "<for B/C/D/E: what the image/video must depict; for A: null>",
  "composition": "<for A: 'left-rag display headline, link-style action'; for B: 'image-left / type-right 60/40'; etc.>",
  "anti_pattern_check": ["centered-stack-button: PASS", "two-equal-CTAs: PASS", "stock-vector-laptop: PASS", "ai-decorative-imagery: PASS"]
}
```

The write-code sub-agent reads `theme.hero.tier` and uses the corresponding component recipe sketch from this file as the starting point. The sub-agent MUST NOT downgrade the tier (e.g. emit a Tier 0 hero when `theme.hero.tier === "B"`), and MUST NOT upgrade it (e.g. add a video to a Tier A hero).

The design-audit sub-agent reads `theme.hero` and verifies:
- The rendered hero matches the declared tier's shape.
- The anti-pattern checks all show PASS.
- The primary action is named (not generic), per § Honest Copy.

---

## Recipe sketches are token sketches, not literal output (HARD rule for all tiers)

The Tailwind / `var(--xxx)` strings shown in the recipe sketches above are **structural sketches** — they communicate the layout shape (grid, anchoring, hierarchy of elements, max-width / line-length, role of each element). They are NOT the literal class strings to copy into the rendered hero.

**Before emitting the hero, the write-code sub-agent MUST**:
1. Replace every typography literal (`text-[64px]`, `text-7xl`, `text-base`, `leading-[0.95]`, `tracking-[-0.02em]`) with a theme-role utility or `var(--font-*)` reference. The theme's display / h1 / h2 / h3 / body / caption ladder is the only legal source of font sizes — picking a Tailwind step or a raw px just for the hero is a violation of write-code §5 "Typography roles, not custom sizes" AND §5 "Spacing roles, not custom values".
2. Replace every spacing literal (`px-8`, `py-32`, `mt-12`, `p-8`, `gap-6`) with a theme-spacing token (`var(--spacing-*)`) or a theme-derived spacing utility (`px-section`, `mt-stack-lg`, etc.). The theme's spacing rhythm — base × {0.5, 1, 2, 3, 4, 6, 8, 12, 16} — is the only legal source of spacing values.
3. Verify both directions of the bijection from write-code §1.2 Token Materialization Contract: every token used by the hero MUST exist as a `:root` declaration in `global.css`, and every `:root` declaration MUST trace back to a leaf in `theme.json`.

**If a token the hero needs does not exist in the theme**, the correct response is to add it to `theme.json` (and update the type-scale ratio metadata accordingly per design-dna's Type-Scale Ratio rule), not to hardcode a one-off literal in the hero. The hero earns its visual authority through the theme's coherent ladder, not through escaping it.

**Rationale**: a hero that uses `text-[112px]` while the rest of the page uses `var(--font-size-display)` produces two different type rhythms on the same screen — exactly the "chaotic type sizes / spacing feels broken" failure mode this section exists to prevent. The hero must SHARE the theme's ladder, just at higher steps.
