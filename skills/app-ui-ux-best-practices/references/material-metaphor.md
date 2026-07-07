# Material Metaphor Reference

**Innovation Track ONLY.** This reference provides the complete methodology for transforming brand personality into physical material properties and visual physics rules.

---

## Methodology Overview

The Material Metaphor process follows 4 sequential steps:

1. **Insight Discovery**: Understand brand personality through feeling keywords
2. **Material Selection**: Choose base material and environmental setting
3. **Visual Physics**: Define lighting, depth, and edge treatment rules
4. **Micro-Detail Polish**: Apply surface luster, tactile depth, and ambient warmth

---

## Step 1: Insight Discovery (Brand-First, NOT Industry-First)

### Core Questions

Before any visual decisions:

1. What is the BRAND personality? (NOT industry category)
2. What emotional response should users feel? (NOT what they "expect")
3. How is this DIFFERENT from competitors?
4. Who is the target user? (specific: age, lifestyle, values, cultural context)

### Output: 3-5 Feeling Keywords

Generate keywords in the user's language that capture brand essence.

### Anti-Pattern Examples (AVOID)

- Food delivery: "delicious", "warm" → leads to predictable Orange/Red palette
- Pet care: "cute", "fun" → leads to cliché rounded corners and pastels
- Finance: "trustworthy", "secure" → leads to Blue/Green corporate look

### Success Examples (Brand-First Thinking)

**Premium pet nutrition subscription:**
- Keywords: "scientific", "precise", "health guardian"
- Result: Minimal white, clean typography, data visualization aesthetic
- Differentiator: Medical/lab-quality feel vs. cute pet store

**Late-night comfort food delivery:**
- Keywords: "healing", "solitude", "gentle", "companionship"
- Result: Warm neutrals, soft shadows, cozy atmosphere
- Differentiator: Emotional support vs. fast transaction

**Gen-Z investment app:**
- Keywords: "fearless", "playful", "in control", "irreverent"
- Result: Bold colors, casual voice, gamification elements
- Differentiator: Empowerment vs. intimidating finance

---

## Step 2: Base Material Selection

### Key Question

**If this app were a physical object, what would it be made of?**

### Base Material Reference List

**These are starting points - invent metaphors specific to the product.**

| Material | Feel | Characteristics | When to Use |
|----------|------|-----------------|-------------|
| **Glass** | Transparent, Premium, Delicate | Light refraction, reflections, clarity | Products emphasizing transparency, purity, or precision |
| **Paper** | Warm, Tactile, Familiar | Texture, softness, folds and layers | Content-heavy products, editorial experiences |
| **Liquid Metal** | Fluid, Modern, Dynamic | Morphing, reflective, seamless transitions | Tech products with continuous workflow |
| **Fabric** | Soft, Organic, Comfortable | Draping, weave texture, flexibility | Wellness, lifestyle, comfort-focused products |
| **Vintage Magazine Paper** | Nostalgic, Artistic, Editorial | Yellowed tone, print grain, collage feel | Creative tools, archival products, storytelling apps |
| **Brushed Steel** | Precise, Luxury, Technical | Fine lines, subtle shine, engineered | Professional tools, premium B2C products |
| **Handmade Ceramic** | Artisanal, Unique, Imperfect | Slight irregularities, matte finish, warmth | Craft-focused, human-centered, authentic brands |
| **Aged Vellum** | Historical, Scholarly, Refined | Parchment texture, subtle yellowing, timeless | Educational, archival, knowledge products |
| **Blown Glass** | Artistic, Delicate, Luminous | Inner glow, organic shapes, translucency | Creative products, premium experiences |
| **Frosted Glass** | Modern, Subtle, Layered | Diffused light, soft edges, depth through opacity | Privacy-focused, calm interfaces |
| **Polished Stone** | Solid, Natural, Grounded | Weight, texture variation, subtle veining | Finance, real estate, foundational products |
| **Brushed Aluminum** | Technical, Clean, Professional | Directional grain, matte finish, industrial | Developer tools, productivity apps |
| **Woven Linen** | Natural, Breathable, Honest | Visible weave, slight irregularity, tactile | Sustainable products, organic brands |
| **Cork Board** | Casual, Organizational, Tactile | Pin texture, natural variation, warm | Planning tools, note-taking, organization apps |

### Material Translation Examples

**Glass → Visual Properties:**
- High transparency values (opacity: 0.85-0.95)
- Subtle border highlights (1px rgba(255,255,255,0.1))
- Light refraction effects (gradient borders)
- Clean, crisp edges

**Paper → Visual Properties:**
- Soft shadows (offset-y: 2-4px, blur: 8-12px)
- Warm background tints (#FAFAF9, #F8F7F5)
- Subtle texture overlays (noise at 2-3% opacity)
- Slightly irregular edges (border-radius variation)

**Liquid Metal → Visual Properties:**
- Gradient backgrounds (subtle, directional)
- High reflectivity (glossy elements)
- Smooth transitions (300-400ms duration)
- Seamless component connections

---

## Step 3: Environmental Setting

### Key Question

**What lighting and atmosphere surrounds the material?**

### Environmental Reference List

**Create your own if needed - these are starting points.**

| Environment | Mood | Lighting Quality | Color Temperature |
|-------------|------|------------------|-------------------|
| **California Beach at Sunset** | Optimistic, Warm, Relaxed | Golden hour, soft shadows, natural warmth | 3000K-4000K warm |
| **Misty Jiangnan Garden** | Contemplative, Serene, Poetic | Diffused light, soft focus, ethereal | 5000K-6000K cool-neutral |
| **Nordic Winter Interior** | Clean, Calm, Minimal | Cool daylight, crisp shadows, high contrast | 6000K-7000K cool |
| **Warm Library at Night** | Intellectual, Cozy, Focused | Amber lighting, deep shadows, intimate | 2500K-3000K very warm |
| **Forest Clearing at Sunrise** | Fresh, Alive, Natural | Dappled light, morning mist, gentle awakening | 4000K-5000K neutral |
| **Midnight Jazz Club** | Sophisticated, Intimate, Moody | Spotlight drama, dark backgrounds, selective glow | 2000K-2500K amber |
| **Antique Bookstore** | Nostalgic, Curious, Timeless | Warm incandescent, dust particles, aged ambiance | 2700K-3000K warm |
| **Modern Art Gallery** | Precise, Elevated, Spacious | Neutral daylight, minimal shadows, focus on content | 5000K-5500K neutral-cool |
| **Desert at High Noon** | Stark, Bold, Unfiltered | Harsh directional light, strong shadows | 5500K-6500K bright neutral |
| **Rainy City Street** | Urban, Reflective, Dynamic | Diffused gray light, reflections, wet surfaces | 6000K-7000K overcast |

### Environment Translation Examples

**California Beach at Sunset → Visual Properties:**
- Warm background tints (#FFF9F5, #FFFAF0)
- Golden accent colors (#F59E0B, #FB923C)
- Soft, long shadows (offset-y: 8-12px)
- Low contrast ratios (comfortable, not stark)

**Nordic Winter Interior → Visual Properties:**
- Cool neutral backgrounds (#FAFBFC, #F8F9FA)
- Crisp, short shadows (offset-y: 1-2px, minimal blur)
- High contrast text (#18181B on white)
- Cool accent colors (#0EA5E9, #06B6D4)

**Midnight Jazz Club → Visual Properties:**
- Very dark backgrounds (#0A0A0A, #1A1A1A)
- Warm accent colors (#F59E0B, #EAB308)
- Selective highlights (spotlight effects)
- Deep, dramatic shadows

---

## Step 4: Visual Physics Rules

### 4.1 Lighting Logic

| Type | Characteristics | Use When | Implementation |
|------|----------------|----------|----------------|
| **Point Light** | Single source, directional shadows, dramatic depth | Strong hierarchy, premium feel, sculptural elements | Drop shadows with clear direction, single light source consistency |
| **Ambient/Diffused** | Soft, even lighting, minimal shadows, gentle | Calm atmosphere, readability focus, approachable | Subtle shadows, low offset, high blur |
| **Inner Glow** | Light emanates from within object, ethereal | Mystical, digital-native, energy/activity states | Inset shadows with light colors, gradient overlays |
| **No Shadow** | Flat, illustration-like, graphic | Playful, casual, 2D aesthetic, simplicity | Border-only depth, color contrast for hierarchy |

### Lighting Selection Matrix

| Material | Environment | Recommended Lighting |
|----------|-------------|---------------------|
| Glass | Gallery | Ambient |
| Glass | Jazz Club | Point Light |
| Paper | Library | Warm Ambient |
| Liquid Metal | Desert Noon | Point Light |
| Fabric | Forest Clearing | Diffused |

### 4.2 Depth Expression

| Method | Effect | Material Match | Tailwind Example |
|--------|--------|----------------|------------------|
| **Drop Shadow** | Floating above surface, clear separation | Paper, cards, layered UI | shadow-sm, shadow-md, shadow-lg |
| **Blur/Defocus** | Depth of field, atmospheric | Glass, translucent materials, overlays | backdrop-blur-sm, backdrop-blur-md |
| **Opacity Layers** | Stacking transparency, subtle depth | Liquid, glass, modern minimalism | bg-white/10, bg-black/5 |
| **Border Only** | Outline definition, no elevation | Flat aesthetics, line art, technical precision | border border-gray-200 |

### Depth Hierarchy System

Define 3 elevation levels for your design:

**Example System (Paper + Library):**
- Level 0 (Background): No shadow, base color
- Level 1 (Content Cards): shadow-sm (0 1px 2px rgba(0,0,0,0.05))
- Level 2 (Floating Modals): shadow-lg (0 10px 15px rgba(0,0,0,0.1))

**Example System (Glass + Gallery):**
- Level 0 (Background): backdrop-blur-none
- Level 1 (Panels): backdrop-blur-sm + border-white/10
- Level 2 (Overlays): backdrop-blur-md + border-white/20

### 4.3 Edge Treatment

| Type | Radius | Feeling | Best For | Tailwind Class |
|------|--------|---------|----------|----------------|
| **Sharp** | 0px | Technical, Modern, Precise | Developer tools, data dashboards, geometric | rounded-none |
| **Subtle** | 4-8px | Professional, Balanced, Refined | Business apps, productivity, neutral tone | rounded, rounded-md |
| **Soft** | 12-20px | Friendly, Approachable, Comfortable | Consumer apps, social, wellness | rounded-xl, rounded-2xl |
| **Full Round** | 50% / pill | Playful, Casual, Organic | Games, children's apps, casual social | rounded-full |

### Edge Consistency Rule

Pick ONE primary radius for buttons/cards, optionally one secondary for smaller elements (badges, tags).

**Example:**
- Primary (buttons, cards): rounded-lg (8px)
- Secondary (badges, avatars): rounded-full

---

## Step 5: Micro-Detail Polish

### 5.1 Surface Luster

How light interacts with the material surface.

**Matte Materials (Paper, Fabric, Ceramic):**
- No glossy highlights
- Flat color fills
- Texture through subtle noise overlay (2-3% opacity)

**Satin Materials (Brushed Metal, Stone):**
- Subtle directional gradient (5-10% lightness variation)
- Soft highlight on top edge (1px lighter border-top)
- Low-key reflectivity

**Glossy Materials (Glass, Liquid Metal, Polished Stone):**
- Strong highlights (inset light border at top)
- Gradient backgrounds (directional light simulation)
- Reflected light from surroundings (subtle color tints)

### 5.2 Tactile Depth

Physical presence and weight.

**Light Materials (Paper, Fabric):**
- Short shadow offset (1-2px)
- High blur ratio (blur = 4x offset)
- Hover lifts easily (translate-y: -2px)

**Medium Materials (Glass, Ceramic):**
- Medium shadow offset (2-4px)
- Moderate blur (blur = 3x offset)
- Hover lifts moderately (translate-y: -1px)

**Heavy Materials (Metal, Stone):**
- Longer shadow offset (4-8px)
- Lower blur ratio (blur = 2x offset)
- Minimal hover lift (translate-y: -0.5px)

### 5.3 Ambient Warmth

Overall temperature and atmosphere.

**Warm Environments (Beach, Library, Jazz Club):**
- Background tints with yellow/orange undertone (#FFFAF0, #FFF9F5)
- Shadow colors with warm cast (rgba(200,150,100,0.1))
- Accent colors in warm spectrum (orange, amber, yellow)

**Cool Environments (Nordic, Gallery, Rainy City):**
- Background tints with blue undertone (#F8F9FA, #F5F7FA)
- Shadow colors with cool cast (rgba(100,120,150,0.1))
- Accent colors in cool spectrum (blue, cyan, indigo)

**Neutral Environments (Forest, Desert):**
- Pure gray backgrounds (#FAFAFA, #F5F5F5)
- Neutral shadow colors (rgba(0,0,0,0.1))
- Accent colors from any spectrum (context-dependent)

---

## Material Brief Template

Use this template to document your material metaphor before passing to design-tokens:

```markdown
# Material Brief: [Product Name]

## 1. Brand Feeling Keywords
[List 3-5 keywords from Step 1]

## 2. Material Metaphor
- **Base Material:** [material name and description]
- **Environment:** [setting name and description]
- **Combined Effect:** [how they work together]

## 3. Visual Physics Rules

### Lighting
- **Type:** [Point Light / Ambient / Inner Glow / No Shadow]
- **Rationale:** [why this matches the metaphor]

### Depth Expression
- **Method:** [Drop Shadow / Blur / Opacity Layers / Border Only]
- **Hierarchy Levels:**
  - Level 0 (Background): [shadow-none / no blur]
  - Level 1 (Content): [shadow-sm / backdrop-blur-sm]
  - Level 2 (Floating): [shadow-lg / backdrop-blur-md]

### Edge Treatment
- **Primary Radius:** [rounded-lg / rounded-xl / rounded-none]
- **Secondary Radius:** [rounded-full for badges, etc.]
- **Rationale:** [why this matches the feeling]

## 4. Micro-Detail Polish

### Surface Luster
- [Matte / Satin / Glossy]
- [Implementation details]

### Tactile Depth
- [Light / Medium / Heavy]
- [Shadow offset and blur values]

### Ambient Warmth
- [Warm / Cool / Neutral]
- [Background tint values]

## 5. Next Steps
Pass this brief to design-tokens skill to translate into:
- Color palette (with temperature from warmth)
- Typography scale (with weight based on material)
- Spacing system (with rhythm based on material)
- Shadow/blur tokens (from depth expression)
```

---

## Important Notes

### Invention Over Replication

The reference lists above are STARTING POINTS. The best material metaphors are invented specifically for the product.

**Examples of Custom Metaphors:**
- "Aged Receipt Paper" for expense tracking app
- "Morning Fog Over Lake" for meditation app
- "Architect's Vellum" for CAD software
- "Poolside Tile" for swimming app

### Coherence is Critical

All visual decisions must trace back to the material metaphor. Don't mix:
- Glass (sharp, transparent) with Fabric (soft, opaque)
- Jazz Club (dark, dramatic) with Beach (bright, casual)
- Point Light (directional) with No Shadow (flat)

### Material Constraints are Features

Physical materials have limitations - embrace them:
- Glass can't be fully opaque
- Paper can't have glossy highlights
- Metal doesn't have rounded edges naturally
- Fabric doesn't have sharp corners

Let these constraints guide design decisions toward coherence.

---

## Handoff to Next Skill

Once Material Brief is complete:

1. Review with user - confirm the metaphor feels right
2. Invoke design-tokens skill - pass the Material Brief as input
3. Design-tokens translates physical properties into CSS/design tokens
4. Continue workflow: design-tokens → component-recipe → motion-system → design-audit
