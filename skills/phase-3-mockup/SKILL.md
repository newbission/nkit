---
name: phase-3-mockup
description: |
  Skill for creating mockups with UI/UX trends without a designer.
  Designs HTML/CSS/JS prototypes that can be converted to Next.js components.
allowed-tools:
  - Read
  - Write
  - Edit
  - Glob
  - WebSearch
user-invocable: true
---

# Phase 3: Mockup Development

> Create trendy UI without a designer + Consider Next.js componentization

## Purpose

Quickly validate ideas before actual implementation. **Even without a designer**, research UI/UX trends to create high-quality prototypes, designed for easy conversion to Next.js components later.

## What to Do in This Phase

1. **Screen Mockups**: Implement UI with HTML/CSS
2. **Interactions**: Implement behavior with basic JavaScript
3. **Data Simulation**: Simulate API responses with JSON files
4. **Feature Validation**: Test user flows

## Deliverables

```
mockup/
├── pages/          # HTML pages
│   ├── index.html
│   ├── login.html
│   └── ...
├── styles/         # CSS
│   └── main.css
├── scripts/        # JavaScript
│   └── app.js
└── data/           # JSON mock data
    ├── users.json
    └── products.json

docs/02-design/
└── mockup-spec.md  # Mockup specification
```

## Core Principles

```
"Working prototype over perfect code"

- Pure HTML/CSS/JS without frameworks
- JSON files instead of APIs for data simulation
- Fast feedback loops
- Structure considering Next.js componentization
```

---

## UI/UX Trend Research Methods

### Creating Trendy UI Without a Designer

#### 1. Trend Research Sources

| Source | Purpose | URL |
|--------|---------|-----|
| **Dribbble** | UI design trends, color palettes | dribbble.com |
| **Behance** | Real project case studies | behance.net |
| **Awwwards** | Latest web trends from award winners | awwwards.com |
| **Mobbin** | Mobile app UI patterns | mobbin.com |
| **Godly** | Landing page references | godly.website |
| **Land-book** | Landing page gallery | land-book.com |

#### 2. 2025-2026 UI/UX Trends

```
Visual Trends
├── Bento Grid Layout
├── Glassmorphism
├── Gradient Mesh
├── 3D Elements (minimal 3D elements)
└── Micro-interactions

UX Trends
├── Dark Mode First
├── Skeleton Loading
├── Progressive Disclosure
├── Thumb-friendly Mobile Design
└── Accessibility (WCAG 2.1)

Typography
├── Variable Fonts
├── Large Hero Text
└── Mixed Font Weights
```

#### 3. Quick UI Implementation Tools

| Tool | Purpose |
|------|---------|
| **v0.dev** | AI-based UI generation (shadcn/ui compatible) |
| **Tailwind UI** | High-quality component templates |
| **Heroicons** | Icons |
| **Lucide** | Icons (React compatible) |
| **Coolors** | Color palette generation |
| **Realtime Colors** | Real-time color preview |

#### 4. Pre-Mockup Checklist

```markdown
## UI Research Checklist

- [ ] Analyzed 3+ similar services
- [ ] Decided color palette (Primary, Secondary, Accent)
- [ ] Selected typography (Heading, Body)
- [ ] Chose layout pattern (Grid, Bento, etc.)
- [ ] Collected reference design screenshots
```

---

## Design for Next.js Componentization

### Mockup -> Component Transition Strategy

Considering **component separation** from the mockup stage makes Next.js transition easier.

#### 1. Design HTML Structure in Component Units

```html
<!-- Bad: Monolithic HTML -->
<div class="page">
  <header>...</header>
  <main>
    <div class="hero">...</div>
    <div class="features">...</div>
  </main>
  <footer>...</footer>
</div>

<!-- Good: Separated by component units -->
<!-- components/Header.html -->
<header data-component="Header">
  <nav data-component="Navigation">...</nav>
</header>

<!-- components/Hero.html -->
<section data-component="Hero">
  <h1 data-slot="title">...</h1>
  <p data-slot="description">...</p>
  <button data-component="Button" data-variant="primary">...</button>
</section>
```

#### 2. Separate CSS by Component

```
mockup/
├── styles/
│   ├── base/
│   │   ├── reset.css
│   │   └── variables.css      # CSS variables (design tokens)
│   ├── components/
│   │   ├── button.css
│   │   ├── card.css
│   │   ├── header.css
│   │   └── hero.css
│   └── pages/
│       └── home.css
```

#### 3. Create Component Mapping Document

```markdown
## Component Mapping (mockup -> Next.js)

| Mockup File | Next.js Component | Props |
|-------------|------------------|-------|
| `components/button.html` | `components/ui/Button.tsx` | variant, size, disabled |
| `components/card.html` | `components/ui/Card.tsx` | title, description, image |
| `components/header.html` | `components/layout/Header.tsx` | user, navigation |
```

#### 4. Design Data Structure as Props

```javascript
// mockup/data/hero.json
{
  "title": "Innovative Service",
  "description": "We provide better experiences",
  "cta": {
    "label": "Get Started",
    "href": "/signup"
  },
  "image": "/hero-image.png"
}

// -> When transitioning to Next.js
// components/Hero.tsx
interface HeroProps {
  title: string;
  description: string;
  cta: {
    label: string;
    href: string;
  };
  image: string;
}
```

### Next.js Transition Example

**Mockup (HTML)**:
```html
<!-- mockup/components/feature-card.html -->
<div class="feature-card" data-component="FeatureCard">
  <div class="feature-card__icon">rocket</div>
  <h3 class="feature-card__title">Fast Speed</h3>
  <p class="feature-card__description">We provide optimized performance.</p>
</div>
```

**Next.js Component**:
```tsx
// components/FeatureCard.tsx
interface FeatureCardProps {
  icon: string;
  title: string;
  description: string;
}

export function FeatureCard({ icon, title, description }: FeatureCardProps) {
  return (
    <div className="feature-card">
      <div className="feature-card__icon">{icon}</div>
      <h3 className="feature-card__title">{title}</h3>
      <p className="feature-card__description">{description}</p>
    </div>
  );
}
```

---

## JSON Data Simulation Example

```javascript
// scripts/app.js
async function loadProducts() {
  const response = await fetch('./data/products.json');
  const products = await response.json();
  renderProducts(products);
}
```

### JSON Structure -> Use as API Schema

```json
// mockup/data/products.json
// This structure becomes the basis for Phase 4 API design
{
  "data": [
    {
      "id": 1,
      "name": "Product Name",
      "price": 10000,
      "image": "/products/1.jpg"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 10,
    "total": 50
  }
}
```

---

## Deliverables Checklist

- [ ] **UI Research**
  - [ ] Collected reference designs (minimum 3)
  - [ ] Decided color palette
  - [ ] Selected fonts

- [ ] **Mockup Implementation**
  - [ ] HTML separated by component units
  - [ ] Design tokens defined with CSS variables
  - [ ] Data simulated with JSON

- [ ] **Next.js Transition Preparation**
  - [ ] Component mapping document created
  - [ ] Props interfaces defined
  - [ ] Verified reusable structure
