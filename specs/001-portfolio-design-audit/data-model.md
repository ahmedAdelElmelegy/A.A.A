# Data Model: Portfolio Design Tokens

**Branch**: `001-portfolio-design-audit` | **Date**: 2026-04-03

This feature does not introduce traditional data entities. Instead, the "data model" is the **design token system** — the structured set of constants that govern the portfolio's visual appearance.

## Design Tokens

### Color Palette

| Token Name | Hex Value | Purpose |
|-----------|-----------|---------|
| `primary` | `#3B82F6` | Primary blue — headings, nav hover fills, skill borders, section title color |
| `secondary` | `#1E40AF` | Secondary dark blue — footer gradient start, CTA hover states |
| `accent` | `#F59E0B` | Amber accent — primary CTA background, active indicators, highlights |
| `accentDark` | `#D97706` | Amber dark — CTA hover state |
| `textPrimary` | `#1A1A2E` | Main body text and headings |
| `textSecondary` | `#525252` | Descriptions, subtitles (WCAG AA compliant on white) |
| `textMuted` | `#6B7280` | Captions, meta text (WCAG AA compliant on white) |
| `background` | `#FFFFFF` | Page background |
| `surface` | `#F8FAFC` | Card/container backgrounds |
| `border` | `#E2E8F0` | Subtle borders |
| `error` | `#D32F2F` | Error states (unchanged) |
| `success` | `#388E3C` | Success states (unchanged) |

### Typography Scale

| Token Name | Size | Weight | Line Height | Letter Spacing |
|-----------|------|--------|-------------|----------------|
| `display` | 56px | w800 | 1.1 | -0.02em |
| `h1` | 40px | w800 | 1.2 | -0.01em |
| `h2` | 32px | w700 | 1.3 | 0 |
| `h3` | 24px | w600 | 1.3 | 0 |
| `h4` | 20px | w600 | 1.4 | 0 |
| `body` | 16px | w400 | 1.6 | 0 |
| `bodyBold` | 16px | w700 | 1.6 | 0 |
| `caption` | 14px | w500 | 1.5 | 0.01em |

**Font family**: Urbanist (all tokens)

### Spacing Scale

| Token Name | Value | Usage |
|-----------|-------|-------|
| `spaceXs` | 8px | Tight inline gaps |
| `spaceSm` | 16px | Element gaps, card internal padding |
| `spaceMd` | 24px | Between related items |
| `spaceLg` | 32px | Between sub-sections |
| `spaceXl` | 48px | Section internal padding |
| `space2xl` | 64px | Between major sections |
| `space3xl` | 80px | Desktop horizontal page margins |

### Breakpoints

| Token Name | Value | Description |
|-----------|-------|-------------|
| `mobile` | < 600px | Phone form factor |
| `tablet` | 600–1199px | Tablet and small desktop |
| `desktop` | ≥ 1200px | Full desktop |

### Elevation & Shadows

| Token Name | Values | Usage |
|-----------|--------|-------|
| `shadowSm` | 0 2px 8px rgba(0,0,0,0.06) | Subtle cards |
| `shadowMd` | 0 4px 16px rgba(0,0,0,0.08) | Project cards, elevated containers |
| `shadowLg` | 0 8px 24px rgba(0,0,0,0.12) | Hover states, modals |

### Border Radius

| Token Name | Value | Usage |
|-----------|-------|-------|
| `radiusSm` | 8px | Buttons, nav items, skill chips |
| `radiusMd` | 12px | Cards, containers |
| `radiusLg` | 20px | Project cards, hero profile shape |
| `radiusFull` | 9999px | Circular elements, pills |

## Existing Entities (Unchanged)

### ProjectModel
- `projectName`: String — project title
- `projectDescription`: String — brief description
- `projectImage`: String — asset path to project screenshot
- `technologies`: List<String> — tech stack tags (exists but not displayed on cards — will be shown)
- `features`: List<String> — feature list for detail page
- `smImages`: List<String> — screenshot gallery paths  
- `githupLink`: String — GitHub repo URL
- `applink`: String — live app URL

### MyWorkProcessModel
- `icon`: IconData — step icon
- `title`: String — step name
- `description`: String — step description

No schema changes needed. The `technologies` field already exists on `ProjectModel` and will be surfaced in UI.
