# Design Brief: Mysore Tourism Explorer

**Tone & Aesthetic**: Editorial + Cultural Pride. Warm Indian heritage celebration through terracotta/saffron palette, sophisticated serif typography, and layered card composition. Refined, accessible, distinctly regional.

**Visual Direction**: Deep root in Mysore's palace architecture and temple culture. Warm cream backgrounds, generous spacing, ornamental detail in card borders echoing Indian architectural heritage. Contemporary craft methodology with traditional inspiration.

## Palette (OKLCH)

| Token              | Light          | Dark           | Purpose                           |
| :----------------- | :------------- | :------------- | :-------------------------------- |
| **background**     | 0.96 0.02 40   | 0.15 0.02 30   | Page base, cream warmth           |
| **foreground**     | 0.2 0.02 40    | 0.92 0.01 40   | Body text, high contrast dark     |
| **primary**        | 0.48 0.19 30   | 0.65 0.22 45   | Warm terracotta CTA, hero text    |
| **secondary**      | 0.72 0.08 50   | 0.35 0.02 30   | Warm gold accents, highlights     |
| **accent**         | 0.65 0.22 45   | 0.72 0.18 45   | Saffron/vibrant elements          |
| **muted**          | 0.92 0.01 40   | 0.28 0.02 30   | Subtle backgrounds, borders       |
| **destructive**    | 0.55 0.22 25   | 0.65 0.19 22   | Error/warning states              |

## Typography

| Level      | Font              | Size / Weight | Usage                           |
| :--------- | :---------------- | :------------ | :------------------------------ |
| **Display**| Fraunces (serif)  | 48–56px, 700  | Page titles, hero headlines     |
| **Body**   | DM Sans (sans)    | 16–18px, 400  | Paragraphs, card descriptions   |
| **Mono**   | Geist Mono        | 14px, 400     | Price tags, location details    |

## Structural Zones

| Zone         | Background              | Border/Elevation           | Usage                             |
| :----------- | :---------------------- | :------------------------ | :-------------------------------- |
| **Header**   | primary (terracotta)    | No border, filled          | Main navigation, logo, search     |
| **Hero**     | accent (saffron)        | Layered image card, shadow | Featured attraction carousel      |
| **Content**  | background (cream)      | Card: bg-card + shadow-card| Attraction grid, hotel listings   |
| **Footer**   | muted/40 (light grey)   | border-t subtle            | Links, company info               |

## Elevation & Depth

- **Card shadow**: `shadow-card` (0 4px 12px rgba(0,0,0,0.08)) — subtle lift, warm tone
- **Elevated**: `shadow-elevated` (0 8px 24px rgba(0,0,0,0.12)) — modals, hero imagery
- **Hover state**: +2px shadow increase, transition-smooth 0.3s
- **No harsh shadows**: All shadows preserve warm, inviting tone

## Shape Language

- **Border radius**: 1rem (16px) — generous, warm, modern-organic feel
- **Card corners**: 16px radius on all cards, slight ornamental border accent using primary color
- **Buttons**: 16px radius, uppercase letter-spacing for hierarchy

## Spacing & Rhythm

- **Grid density**: 24px gap for cards, mobile-first responsive (sm: 16px, md: 24px, lg: 32px)
- **Vertical rhythm**: Section padding 48px desktop / 24px mobile
- **Dense info**: Attraction card 300px width, 4 cards per row on desktop, 2 on tablet, 1 on mobile

## Component Patterns

- **Attraction cards**: bg-card, border-l-4 primary (ornamental), image + badge + title + entry fee + link
- **Hotel cards**: Compact cards (280px) with amenities icons, proximity distance, price range
- **CTAs**: Primary color terracotta, uppercase text, rounded 16px, hover: shadow-elevated + color brighten
- **Badges**: Secondary color, 12px font, pill-shaped (rounded-full), muted text

## Motion

- **Entrance**: Card fade-in 0.3s ease-out on scroll (lazy load)
- **Hover**: Shadow elevation 0.3s, subtle scale (1.02x) on interactive cards
- **State change**: Color transition 0.2s on button active/focus states
- **No animation excess**: Choreography constrained to discovery-friendly pacing

## Differentiation & Signature Detail

**Ornamental card border**: Left border-l-4 in primary terracotta on all attraction cards, echoing Indian temple pillar architecture. Creates visual cohesion and regional identity without requiring illustrations.

**Warm neutral palette**: Cream + terracotta + gold specifically evoke Mysore Palace and temple aesthetics. No generic blues or purples.

**Typography pairing**: Fraunces serif (sophisticated, art-deco undertones) + DM Sans (modern, clean) signals both heritage celebration and contemporary accessibility.

## Constraints

- No gradients on body text (readability)
- No neon or ultra-bright accent (60% chroma max)
- Preserve 16px+ minimum touch target on mobile
- All color tokens consumed via Tailwind theme (no hex literals)
- Dark mode: Warm undertones preserved (all backgrounds retain 30° hue toward warm)
