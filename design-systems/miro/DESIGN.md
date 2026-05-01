# Miro

> Category: 设计与创意
> Visual collaboration. Bright yellow accent, infinite canvas aesthetic.

## 1. 视觉主题与氛围

Miro's website is a clean, collaborative-tool-forward platform that communicates "visual thinking" through generous whitespace, pastel accent colors, and a confident geometric font. The design uses a predominantly white canvas with near-black text (`#1c1c1e`) and a distinctive pastel color palette — coral, rose, teal, orange, yellow, moss — each representing different collaboration contexts.

The typography uses Roobert PRO Medium as the primary display font with OpenType character variants (`"blwf", "cv03", "cv04", "cv09", "cv11"`) and negative letter-spacing (-1.68px at 56px). Noto Sans handles body text with its own stylistic set (`"liga" 0, "ss01", "ss04", "ss05"`). The design is built with Framer, giving it smooth animations and modern component patterns.

**核心特征：**
- White canvas with near-black (`#1c1c1e`) text
- Roobert PRO Medium with multiple OpenType character variants
- Pastel accent palette: coral, rose, teal, orange, yellow, moss (light + dark pairs)
- Blue 450 (`#5b76fe`) as primary interactive color
- Success green (`#00b473`) for positive states
- Generous border-radius: 8px–50px range
- Framer-built with smooth motion patterns
- Ring shadow border: `rgb(224,226,232) 0px 0px 0px 1px`

## 2. 色彩体系与角色

### 主色
- **Near Black** (`#1c1c1e`): Primary text
- **White** (`#ffffff`): `--tw-color-white`, primary surface
- **Blue 450** (`#5b76fe`): `--tw-color-blue-450`, primary interactive
- **Actionable Pressed** (`#2a41b6`): `--tw-color-actionable-pressed`

### Pastel Accents (Light/Dark pairs)
- **Coral**: Light `#ffc6c6` / Dark `#600000`
- **Rose**: Light `#ffd8f4` / Dark (implied)
- **Teal**: Light `#c3faf5` / Dark `#187574`
- **Orange**: Light `#ffe6cd`
- **Yellow**: Dark `#746019`
- **Moss**: Dark `#187574`
- **Pink** (`#fde0f0`): Soft pink surface
- **Red** (`#fbd4d4`): Light red surface
- **Dark Red** (`#e3c5c5`): Muted red

### Semantic
- **成功** (`#00b473`): `--tw-color-success-accent`

### Neutral
- **Slate** (`#555a6a`): Secondary text
- **Input Placeholder** (`#a5a8b5`): `--tw-color-input-placeholder`
- **边框色** (`#c7cad5`): Button borders
- **Ring** (`rgb(224,226,232)`): Shadow-as-border

## 3. 排版规则

### 字体家族
- **Display**: `Roobert PRO Medium`, fallback: Placeholder — `"blwf", "cv03", "cv04", "cv09", "cv11"`
- **Display Variants**: `Roobert PRO SemiBold`, `Roobert PRO SemiBold Italic`, `Roobert PRO`
- **Body**: `Noto Sans` — `"liga" 0, "ss01", "ss04", "ss05"`

### 字体层级

| Role | Font | Size | Weight | Line Height | Letter Spacing |
|------|------|------|--------|-------------|----------------|
| Display Hero | Roobert PRO Medium | 56px | 400 | 1.15 | -1.68px |
| Section Heading | Roobert PRO Medium | 48px | 400 | 1.15 | -1.44px |
| Card Title | Roobert PRO Medium | 24px | 400 | 1.15 | -0.72px |
| Sub-heading | Noto Sans | 22px | 400 | 1.35 | -0.44px |
| Feature | Roobert PRO Medium | 18px | 600 | 1.35 | normal |
| Body | Noto Sans | 18px | 400 | 1.45 | normal |
| Body Standard | Noto Sans | 16px | 400–600 | 1.50 | -0.16px |
| Button | Roobert PRO Medium | 17.5px | 700 | 1.29 | 0.175px |
| Caption | Roobert PRO Medium | 14px | 400 | 1.71 | normal |
| Small | Roobert PRO Medium | 12px | 400 | 1.15 | -0.36px |
| Micro Uppercase | Roobert PRO | 10.5px | 400 | 0.90 | uppercase |

## 4. 组件样式

### 按钮
- Outlined: transparent bg, `1px solid #c7cad5`, 8px radius, 7px 12px padding
- White circle: 50% radius, white bg with shadow
- Blue primary (implied from interactive color)

### Cards: 12px–24px radius, pastel backgrounds
### Inputs: white bg, `1px solid #e9eaef`, 8px radius, 16px padding

## 5. 布局原则
- Spacing: 1–24px base scale
- Radius: 8px (buttons), 10px–12px (cards), 20px–24px (panels), 40px–50px (large containers)
- Ring shadow: `rgb(224,226,232) 0px 0px 0px 1px`

## 6. 层深与阴影
Minimal — ring shadow + pastel surface contrast

## 7. 设计规范：推荐与禁忌
### 推荐
- Use pastel light/dark pairs for feature sections
- Apply Roobert PRO with OpenType character variants
- Use Blue 450 (#5b76fe) for interactive elements
### 禁忌
- Don't use heavy shadows
- Don't mix more than 2 pastel accents per section

## 8. 响应式行为
Breakpoints: 425px, 576px, 768px, 896px, 1024px, 1200px, 1280px, 1366px, 1700px, 1920px

## 9. 代理提示指南
### 色彩速查表
- Text: Near Black (`#1c1c1e`)
- Background: White (`#ffffff`)
- Interactive: Blue 450 (`#5b76fe`)
- Success: `#00b473`
- Border: `#c7cad5`
### 组件提示示例
- "Create hero: white background. Roobert PRO Medium 56px, line-height 1.15, letter-spacing -1.68px. Blue CTA (#5b76fe). Outlined secondary (1px solid #c7cad5, 8px radius)."
