# Original reference analysis (not a website specification)

This document records the source images for occasional reference checks. For new websites, follow `web-design.md` and the current request. Do not impose this document's six-color sequence or object list. The current skill's white dotted background and pixel sticker requirements still apply.

Values below are estimates from the original eight static images, not exact parameters from source design files. Coordinates use a top-left origin on a 1242×1660 canvas. These poster measurements are not website CSS dimensions.

## Visual index

| Reference | Type | Observed structure |
|---|---|---|
| `../assets/references/01.png` | Cover | Huge red type, portrait cutout, tool stickers, blue selection strip, red pill button |
| `../assets/references/02.png` | Overview | Pixel keycap heading, English subtitle, thin rule, 3×2 folder cards |
| `../assets/references/03.png` | Text detail | Running header, numbered keycap, large Chinese title, blue folder, text hierarchy |
| `../assets/references/04.png` | Image and text | Brick red folder, text above images, three equal screenshot columns with captions |
| `../assets/references/05.png` | Comparison | Teal folder, explanatory paragraphs, three visual directions compared below |
| `../assets/references/06.png` | Large image | Plum folder, short explanation, one large image below |
| `../assets/references/07.png` | Two images | Mustard folder, explanatory points, two image columns with captions |
| `../assets/references/08.png` | Showcase | Slate folder, two text groups, asymmetric desktop and phone comparison |

The user also highlighted `../assets/references/09-collage-cover.png` as a key element source. It reinforces the cover language in image 01. See [Collage hero rules](collage-hero.md) for a general-purpose interpretation rather than a portrait-specific reproduction.

## Color, typography, and rhythm

| Token | Suggested reference estimate | Role |
|---|---|---|
| paper | #FFFFFF | Paper base |
| ink | #080808 | Main text and pixel outlines |
| dot | #B8B8B8 at about 50% opacity | Subdued dots |
| panel | #EDF2F4 | Nearly neutral pale blue-gray folder body |
| selection | #BBDDEA | Cover selection strip |
| hero-red | #E50914 | Cover title and CTA |
| step-blue | #155EDB | Step 1 |
| step-red | #CD503E | Step 2 |
| step-teal | #07867E | Step 3 |
| step-plum | #784263 | Step 4 |
| step-gold | #CE951E | Step 5 |
| step-slate | #526272 | Step 6 |

Available fonts such as PingFang, Source Han Sans, or Noto Sans CJK can approximate Chinese text. An Arial/Inter-like sans serif can approximate reference Latin text. These are observations and possible approximations, not verified original fonts or mandatory website fonts.

- Detail title: about 72–82px, regular to medium weight. English card heading: 46–50px, white.
- Body: 34–38px, line height 1.45–1.55. Emphasis: weight 600–700. Captions: 23–27px.
- Running header/footer: 25–29px. Paragraph gaps: 28–48px. Larger group gaps: 55–80px.
- Dot spacing: about 43–44px; dot diameter: 2–3px. Any paper texture is extremely subtle and does not blur text.
- Content width: about 92–95%. Outer margins: 30–55px. Detail body horizontal padding: 65–90px.

## Three observed layouts

### A. Collage cover

- A title such as `Portfolio` occupies about 82% of the width and 190–230px of height, roughly 120px from the top, with tight tracking and very heavy weight.
- The central portrait or subject spans about 60–65% of the canvas width, overlapping the title's bottom. Tool stickers sit above the subject. Layer order: paper → large title → person → torn edge and tool stickers.
- Portrait cutouts retain naturally irregular edges. Do not invent or replace a person's identity. For other themes, subject-related objects may replace the portrait.
- A collaboration line or credit sits below the subject. The main Chinese heading uses bold black text on a pale blue selection strip with small corner handles and a pixel hand cursor near the upper right.
- The bottom red pill is about 670×150px, with bold white text and a right arrow, surrounded by at least 70px of breathing room. On a static poster it is a visual element; on a website it needs real behavior.
- Do not move all cover decorations onto body pages.

### B. Step overview

- Upper-left pixel keycap: about 315×110px. An English subtitle and thin gray rule sit below, with six small palette squares at the right.
- Three columns and two rows. Approximate x positions: 35, 440, 840. Each card: 360–365×425–430px. Column gaps: about 38px. Row gaps: about 55px.
- Each card has a colored folder top, pale body, `Step n`, short Chinese title, and 2–3 bullets. Titles: 36–40px. Bullets: 29–32px.
- A 75–110px sticker crosses the tab's upper-right corner. Cards share a height and leave unused space when content is short.
- For more than six steps, add an overview page or choose another arrangement such as 2×2 rather than forcing many narrow columns.

### C. Detail page

- Brand near (25, 50), optional real URL at the upper right. Use only supplied branding and URLs; omit missing information.
- Title band around y=140–250. Left keycap: 240–290×90–115px. Chinese title to the right, separated by 30–45px.
- Folder top around y=325–405, body extending to y=1390–1430. Panel width: about 1170px. Side margins: about 35px.
- Footer around y=1585–1610, brand or series at left, category or page number at right, with visible space below the panel.
- Text usually precedes images. Comparisons use two or three equal-height images with attached captions. A desktop/phone comparison may allocate roughly two-thirds and one-third of the width.
- A poster page accommodates about three short text groups, or one or two groups plus imagery. Add pages rather than shrinking body text below a readable scale.

## Observed component anatomy

### Folder card

The left tab rises about 40–45px above the right top edge and is about 280–310px wide. Top corners are approximately 20–30px, with a smooth shoulder descending from the tab. English headings sit in the tab area. The pale body overlaps the colored shape, leaving a visible horizontal band about 55–65px tall. Bottom corners are about 18–24px.

On the web, use SVG or a tab shape plus a horizontal strip while preserving real text. On small screens, reflow into a column rather than scaling a poster into illegibility. Rounded folder shoulders do not authorize smooth, non-pixel sticker objects.

### Pixel keycap

White-to-light-gray surface, black stepped outline, roughly 8–12px of gray bottom depth, and a thin outer white edge. Use short labels such as `⌘ 01`. Axis-aligned SVG segments can form the outline. If a normal font approximates pixel lettering, describe it as a substitute, not the original font.

### Pixel sticker

Reference subjects include an arrow, flower, pencil, brush, star, and paperclip. They use a limited pixel palette, thick black outlines, white die-cut borders about 8–12px wide, soft shadows around (0, 8, 12, 18%), and rotations around ±8–18°. Large-card stickers are about 130–180px wide and overlap the upper-right corner. Detail posters usually use one main sticker. Create new objects with this grammar rather than cropping screenshot fragments with attached text or backgrounds.

## Reuse and review

Choose the focal subject, content groups, and emphasis for the new task before selecting a structure. Unless explicitly asked to reproduce every image, do not repeat source copy verbatim or force eight pages.

Check that dots do not become text noise, white labels contrast with colored tabs, stickers do not cover content, images preserve proportions, captions remain clear, and no isolated lines remain at the bottom. Keep alignment and component sizing consistent across related pages. For websites, apply the current skill's pixel-style requirements and web-scale typography instead of these poster measurements.
