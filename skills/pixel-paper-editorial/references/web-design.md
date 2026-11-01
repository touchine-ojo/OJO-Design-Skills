# Website implementation and variation rules

## White dots and pixel art are fixed foundations

Use a white #FFFFFF background with pale gray dots. Generic paper texture, cream paper, or grid lines cannot replace it. This CSS is a starting point; adjust density as needed:

```css
:root { --paper: #fff; --ink: #101010; --grid-dot: #c5c5c5; }
body {
  background-color: var(--paper);
  background-image: radial-gradient(circle, var(--grid-dot) 1px, transparent 1.4px);
  background-size: 28px 28px;
}
```

Dots must remain visible at both 390px and 1440px viewport widths. Text containers may locally cover them for readability, but the opening screen must not become plain white or be covered by a full-screen photograph.

## Making pixel stickers

- Draw objects on a 16×16, 24×24, or 32×32 logical grid and enlarge by integer multiples. Use SVG rectangles, axis-aligned paths, or transparent PNGs. Use `image-rendering: pixelated` for PNGs and prefer `shape-rendering: crispEdges` for SVGs.
- Build silhouettes from square steps. Do not use Bézier curves, rounded rectangles, or smooth circular lenses as a substitute for a pixel camera. Represent round objects with stepped pixels too.
- Use thick black pixel outlines, a small flat-color palette, and one or two pixel shading levels. Add a white die-cut border and subtle shadow. The outer die-cut edge can be softer, but the object itself must remain visibly pixelated.
- The opening screen typically has 2–3 theme-specific stickers, about 72–160 CSS px wide, positioned away from text and controls. Echo them sparingly in later sections rather than attaching one to every photograph.
- New photography subjects might include pixel film cartridges, light meters, flashes, or memory cards. Learning sites might use pixel books or floppy disks. Subjects can change; the pixel technique cannot.
- Create original decorations or use assets with appropriate permissions. Do not crop flowers or arrows from the reference screenshots. Ordinary emoji, smooth line icons, paper stamps, and photographic cutouts do not count as pixel stickers.

## Translating the layout into a website

Combine large headlines, readable sans-serif body text, folder-like sections, and pixel keycaps where appropriate. Use responsive headline sizing and typically 16–20px body text. Start with a 1120–1280px maximum content width when useful; do not scale the entire poster as one fixed canvas. Restrict pixel fonts to short labels, numbers, or buttons rather than long paragraphs.

Keep photographs realistic and sharp. A photography hero can overlap photographs and pixel stickers, but must leave substantial visible white dotted space. Cards and navigation should include enough keycap, stepped-edge, or retro-window details to avoid becoming a plain magazine layout.

## Creative freedom within the fixed pixel language

Color freedom applies to accent, sticker, and component colors, not the white dotted base. Manage text, accent, and supporting colors with CSS variables. New combinations such as orange and cobalt or grape purple and teal are welcome. Do not default to the original six-color sequence.

Choose new pixel objects and a page structure appropriate to the theme. Do not force a six-step tutorial or 3×2 card layout. Portfolios can use a project index and large photos; resource libraries can use search, filters, and folder categories. A photography subject is not a reason to replace pixel stickers with a smooth camera or ordinary film border.

## Optional expressive collage heroes

For oversized type, isolated subjects, torn-paper joins, selection highlights, and pill CTAs, read [Collage hero rules](collage-hero.md). These extend the fixed white-dot and pixel-sticker foundation without imposing a specific person, profession, palette, or page structure. Realistic focal subjects and smooth pill CTAs are allowed; the required stickers themselves remain genuine pixel art.

## Structure and interaction

Choose modules for the task. A portfolio can include selected projects and contact options, a tutorial site can have a table of contents and reading area, and a resource library can offer search and filtering. Do not impose identical calls to action or grids on every site.

Navigation and buttons need real destinations or behavior. Forms need labels, validation, submission states, and a clear result. If no backend is connected, explain that rather than displaying a false success. External assets need valid URLs or project-local files.

Use semantic `header`, `nav`, `main`, `section`, and `footer` elements. Give decorative images empty alt text and informative images meaningful alternatives. Support keyboard navigation, visible focus, and sufficient contrast. Rotated or overflowing stickers must not interfere with hit targets.

## Responsive behavior and motion

Desktop layouts may be asymmetric; mobile layouts should restore a clear reading order. Collapse grids as content requires, preserve image proportions, and let headlines wrap naturally. Avoid fixed-height text cards that clip content. Touch targets should be at least about 44px.

Possible motion includes pixel button presses, short sticker entrances, and expanding tabs. Do not default to continuously floating decorations or page-wide pointer tracking. Prefer transforms and opacity, respect `prefers-reduced-motion`, and remain static when motion adds no value.

## Final checks

Confirm all three first-screen features: a white dotted background, genuinely pixelated stickers, and pixel UI details. Then check approximately 390px and 1440px viewports for horizontal overflow, clipped headings, stickers covering text, functional navigation and forms, and clear text contrast. Validate the project build and directly affected interactions. A working website deliverable cannot be only a preview image.
