---
name: NJ STORE Boutique
colors:
  surface: '#fcf9f8'
  surface-dim: '#dcd9d9'
  surface-bright: '#fcf9f8'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f6f3f2'
  surface-container: '#f0eded'
  surface-container-high: '#eae7e7'
  surface-container-highest: '#e4e2e1'
  on-surface: '#1b1c1c'
  on-surface-variant: '#424843'
  inverse-surface: '#303030'
  inverse-on-surface: '#f3f0f0'
  outline: '#737972'
  outline-variant: '#c2c8c0'
  surface-tint: '#4b6451'
  primary: '#4b6451'
  on-primary: '#ffffff'
  primary-container: '#bdd9c1'
  on-primary-container: '#47604d'
  inverse-primary: '#b2cdb6'
  secondary: '#755756'
  on-secondary: '#ffffff'
  secondary-container: '#ffd6d4'
  on-secondary-container: '#7a5b5a'
  tertiary: '#5e5f5b'
  on-tertiary: '#ffffff'
  tertiary-container: '#d3d2cd'
  on-tertiary-container: '#595a57'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#cdead1'
  primary-fixed-dim: '#b2cdb6'
  on-primary-fixed: '#082011'
  on-primary-fixed-variant: '#344c3a'
  secondary-fixed: '#ffdad8'
  secondary-fixed-dim: '#e4bdbb'
  on-secondary-fixed: '#2b1515'
  on-secondary-fixed-variant: '#5b403f'
  tertiary-fixed: '#e3e3de'
  tertiary-fixed-dim: '#c7c7c2'
  on-tertiary-fixed: '#1b1c19'
  on-tertiary-fixed-variant: '#464744'
  background: '#fcf9f8'
  on-background: '#1b1c1c'
  surface-variant: '#e4e2e1'
typography:
  headline-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 36px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.3'
  headline-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 18px
    fontWeight: '600'
    lineHeight: '1.4'
  body-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 14px
    fontWeight: '400'
    lineHeight: '1.6'
  label-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 12px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.05em
rounded:
  sm: 0.5rem
  DEFAULT: 1rem
  md: 1.5rem
  lg: 2rem
  xl: 3rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 12px
  md: 24px
  lg: 48px
  xl: 80px
  gutter: 20px
  margin: 24px
---

## Brand & Style

This design system is built for a contemporary fashion boutique that prioritizes serenity, sophistication, and accessible luxury. The brand personality is chic and welcoming, targeting a discerning audience that values minimalist aesthetics and high-quality craftsmanship.

The visual direction follows a **Minimalist** style with a focus on generous negative space and a light, airy atmosphere. By utilizing a soft, pastel-driven palette, the interface recedes to let product photography take center stage, creating an editorial feel reminiscent of high-end fashion lookbooks. The result is a calm, focused shopping experience that feels curated rather than cluttered.

## Colors

The color palette is anchored by a triad of soft pastels and a warm neutral base. This combination avoids the clinical feel of pure white, opting instead for a luxurious "Cream" foundation.

- **Primary (Mint Green):** Used for primary actions, success states, and category highlights. It evokes freshness and modern elegance.
- **Secondary (Pale Pink):** Employed for promotional accents, interactive elements like "Add to Cart," and softening the overall UI.
- **Tertiary (Cream):** The primary background color. It provides a warm, high-end surface that reduces eye strain and enhances product colors.
- **Neutral (Charcoal):** Reserved for typography and iconography to ensure high legibility while remaining softer than pure black.

## Typography

This design system utilizes **Plus Jakarta Sans** across all levels to maintain a cohesive, modern, and friendly tone. The typeface's soft curves and clean geometric proportions reflect the boutique’s contemporary nature.

Headlines use a tighter letter-spacing and heavier weights to create a strong visual anchor on the page. Body text is prioritized for readability with a generous line height, ensuring that product descriptions are easy to digest. Labels utilize an uppercase transformation and increased letter spacing to create a distinct hierarchy for metadata and secondary navigation elements.

## Layout & Spacing

The layout philosophy relies on a **Fluid Grid** model that emphasizes breathing room. On desktop, a 12-column grid is used, while mobile layouts transition to a 4-column structure. 

A strict 8px base rhythm governs all spatial relationships. High-end appeal is achieved by using "over-sized" margins (md and lg units) between sections to prevent the interface from feeling crowded. Elements within cards and containers use a consistent padding of 24px (md) to maintain an airy, boutique-like presentation.

## Elevation & Depth

To maintain a minimalist and modern look, this design system avoids heavy, traditional shadows. Instead, it utilizes **Tonal Layers** and **Low-Contrast Outlines**.

Depth is created by stacking surfaces:
- **Level 0 (Base):** The Cream background.
- **Level 1 (Cards/Inputs):** Pure white surfaces with no shadows or a very subtle, 15% opacity tint-matched shadow (Mint or Pink tint) to suggest a gentle lift.
- **Level 2 (Modals/Overlays):** These use a soft backdrop blur to create a glass-like focus without disconnecting the user from the store context.

Borders should be used sparingly, primarily in a thin, 1px weight using a slightly darker shade of the Mint or Cream to define form fields.

## Shapes

The shape language is defined by **Pill-shaped** elements and organic roundedness. This soft geometry mirrors the friendly and approachable nature of the pastels. 

Main buttons and search inputs always utilize a full pill radius. Product cards and secondary containers use a "rounded-lg" (2rem) or "rounded-xl" (3rem) setting to ensure they feel tactile and modern. This consistent use of curves removes visual "sharpness," contributing to the overall serene shopping experience.

## Components

### Buttons
Primary buttons are pill-shaped with a solid Mint or Pink fill and Neutral text. Secondary buttons use an outline style or a ghost style with Mint text to maintain hierarchy.

### Input Fields
Search bars and text inputs are pill-shaped with a white background and a subtle border. Placeholders should be in a light neutral tone, and active states should be highlighted with a soft Mint glow or border.

### Product Cards
Cards feature a high border-radius (2rem). The image is the primary focus, usually set against a subtle Mint or Pink background container to provide contrast for the product itself. Text metadata (Price, Title) is centered or left-aligned with ample white space.

### Chips & Tags
Used for sizes or categories, these should be small, pill-shaped buttons. Selected states use a solid Mint fill, while unselected states use a light Mint outline or a Cream fill.

### Navigation
The navigation bar is kept minimal, using thin icons and label-md typography. A transparent or Cream background with a blur effect is preferred for sticky headers to maintain the light, airy feel of the boutique.