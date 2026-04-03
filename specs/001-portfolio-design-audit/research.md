# Research: Portfolio Design Audit & UI/UX Improvements

**Branch**: `001-portfolio-design-audit` | **Date**: 2026-04-03

## R1: Color Palette Refinement Strategy

**Decision**: Refine existing blue palette + add amber accent color

**Rationale**: The current blue palette (#3B82F6 primary, #1E40AF secondary) is well-suited for a tech/Flutter developer identity. Adding an amber/warm accent (#F59E0B) provides:
- Strong visual contrast for CTAs and interactive highlights
- Complementary color theory (blue ↔ amber/orange on the color wheel)
- Warmth to balance the cool blue tones
- Industry precedent: GitHub, Flutter docs, and many dev portfolios use blue + amber/orange

**Refined palette**:
| Token | Current | Refined | Usage |
|-------|---------|---------|-------|
| Primary | #3B82F6 | #3B82F6 | Keep — headings, nav hover, skill borders |
| Secondary | #1E40AF | #1E40AF | Keep — depth, footer gradient |
| Accent | (none) | #F59E0B | NEW — CTA buttons, highlights, active states |
| AccentDark | (none) | #D97706 | NEW — CTA hover state |
| TextPrimary | #232323 | #1A1A2E | Slightly deeper for better contrast |
| TextSecondary | #939393 | #525252 | CRITICAL FIX: #939393 fails WCAG AA on white (3:1). #525252 passes (7:1) |
| TextMuted | (none) | #6B7280 | NEW — captions, meta text (passes WCAG AA at 4.6:1) |
| Background | #FFFFFF | #FFFFFF | Keep |
| Surface | #F6F6F6 | #F8FAFC | Slightly cooler to complement blue |

**Alternatives considered**:
- Full rebrand to teal/emerald: Rejected — loses existing blue identity association with Flutter
- Dark theme: Rejected — out of scope per clarification session
- Purple accent: Rejected — less contrast with blue, harder to differentiate

## R2: Typography Scale System

**Decision**: Adopt a modular type scale with ratio ~1.25 (Major Third)

**Rationale**: The current font sizes (14, 16, 20, 22, 24, 30, 35, 50) lack a mathematical relationship. A modular scale creates visual harmony and clear hierarchy.

**Refined scale**:
| Token | Size | Weight | Line Height | Usage |
|-------|------|--------|-------------|-------|
| Display | 56px | Bold (800) | 1.1 | Hero name only |
| H1 | 40px | Bold (800) | 1.2 | Hero greeting ("Hello, It's Me") |
| H2 | 32px | Bold (700) | 1.3 | Section headings, hero role text |
| H3 | 24px | SemiBold (600) | 1.3 | Sub-section headings (Education, Experience) |
| H4 | 20px | SemiBold (600) | 1.4 | Skill category titles, project names |
| Body | 16px | Regular (400) | 1.6 | Body text, descriptions |
| BodyBold | 16px | Bold (700) | 1.6 | Emphasized body text |
| Caption | 14px | Medium (500) | 1.5 | Nav items, buttons, meta text |

**Alternatives considered**:
- Perfect Fourth (1.333 ratio): Rejected — jumps too large, fewer usable sizes between 16–56
- Linear increments: Rejected — no visual harmony, current approach

## R3: Sticky Navigation Implementation

**Decision**: Use Stack-based layout with fixed header on top of scrollable content

**Rationale**: Flutter web does not natively support CSS `position: sticky`. The two main approaches are:
1. **Stack approach**: Header in a `Positioned` widget on top of `SingleChildScrollView`
2. **SliverAppBar**: Use `CustomScrollView` with `SliverAppBar(pinned: true)`

Stack approach chosen because:
- The current layout uses `SingleChildScrollView` with simple `Column` children
- Minimal refactoring needed (no conversion to Slivers required)
- Easier to add backdrop blur and shadow effects
- SliverAppBar's flexibleSpace/expandedHeight behavior is unnecessary for a simple fixed nav

**Scroll-to-section approach**: Use `GlobalKey` attached to each section's widget. Get the section's `RenderBox` position via `key.currentContext.findRenderObject()` and call `scrollController.animateTo()` with the computed offset.

**Active section tracking**: Listen to `ScrollController` offset changes, compare against section positions to determine which section is currently in view. Update active nav item accordingly.

**Alternatives considered**:
- CustomScrollView + SliverAppBar: Rejected — requires converting all sections to slivers, significant refactor
- scroll_to_index package: Rejected — adds unnecessary dependency for a simple use case

## R4: Spacing System

**Decision**: 8px grid system with defined spacing tokens

**Rationale**: The current codebase uses inconsistent spacing (8, 12, 16, 20, 24, 32, 36, 48, 50, 70, 80, 100, 120, 150). Standardizing to multiples of 8 creates visual rhythm.

**Spacing tokens**:
| Token | Value | Usage |
|-------|-------|-------|
| xs | 8px | Tight inline spacing |
| sm | 16px | Element gaps, internal padding |
| md | 24px | Card padding, between related items |
| lg | 32px | Between sub-sections |
| xl | 48px | Section internal top/bottom padding |
| 2xl | 64px | Between major sections |
| 3xl | 80px | Page horizontal padding (desktop) |
| 4xl | 96px | Banner vertical padding |

**Section gap**: Use `64px` (2xl) consistently between sections instead of current `100px`.
**Desktop horizontal padding**: Standardize to `80px` (3xl) instead of mixed 80/120.

## R5: Responsive Project Cards

**Decision**: Replace fixed 850×500px cards with responsive constraint-based sizing

**Rationale**: Current fixed dimensions cause overflow on tablet viewports (768–1024px) and don't adapt to content.

**Approach**:
- Use `ConstrainedBox` with `maxWidth: 850` instead of fixed width
- Use aspect ratio (16:10) instead of fixed height
- On mobile (< 600px): full width, maintain aspect ratio
- On tablet (600–1199px): max 600px width
- On desktop (1200+): max 850px width

## R6: WCAG AA Contrast Compliance

**Decision**: Audit and fix all text/background combinations

**Current violations found**:
| Element | Text Color | Background | Ratio | Status |
|---------|-----------|------------|-------|--------|
| Hero description | #939393 | #FFFFFF | 3.0:1 | ❌ FAIL |
| Skill items | #3B82F6 | #3B82F6@15% | ~3.5:1 | ⚠️ BORDERLINE |
| Footer subtitle | #FFFFFF@85% | #1E40AF–#3B82F6 | ~4.2:1 | ⚠️ BORDERLINE |
| Project description | #D9D9D9 | black87 gradient | ~4.8:1 | ✓ PASS |

**Fixes**:
- Hero description: Change from `darkGrey (#939393)` → `#525252` (ratio 7:1 on white)
- Skill items: Darken text to `#2563EB` (ratio 4.6:1) or use solid background
- Footer subtitle: Ensure minimum `#FFFFFF@90%` opacity (ratio 5.2:1)
