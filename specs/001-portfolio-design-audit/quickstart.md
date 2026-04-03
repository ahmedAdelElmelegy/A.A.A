# Quickstart: Portfolio Design Audit

**Branch**: `001-portfolio-design-audit` | **Date**: 2026-04-03

## Prerequisites

- Flutter SDK (stable channel, Dart ≥ 3.9.2)
- Chrome browser for web testing
- Git

## Setup

```bash
# 1. Switch to the feature branch
git checkout 001-portfolio-design-audit

# 2. Get dependencies
flutter pub get

# 3. Run the portfolio (web)
flutter run -d chrome
```

## Development Workflow

```bash
# Run in web with hot reload
flutter run -d chrome --web-port 8080

# Run analyzer
flutter analyze

# Run tests
flutter test
```

## Key Files to Modify

### Design Tokens (modify first)
- `lib/core/theme/color.dart` — Color palette
- `lib/core/theme/style.dart` — Typography scale
- `lib/core/utils/app_utils.dart` — Spacing constants + breakpoints

### Navigation (modify second)
- `lib/features/home/presentation/screens/home_screen.dart` — Sticky header layout
- `lib/features/home/presentation/widgets/header.dart` — Fixed positioning
- `lib/features/home/presentation/widgets/nav_bar_list.dart` — GlobalKey scrolling

### Section Widgets (modify last)
- All files under `lib/features/home/presentation/widgets/`

## Testing Approach

1. **Visual review**: Open portfolio in Chrome at 375px, 768px, and 1920px widths
2. **Contrast check**: Use browser DevTools accessibility audit or Chrome Lighthouse
3. **Nav scroll**: Click each nav link, verify smooth scroll to correct section
4. **Responsive**: Resize browser window continuously from 375px → 1920px
5. **Animation timing**: Verify hero animations complete within 1 second

## Specification Reference

- [Feature Spec](spec.md)
- [Implementation Plan](plan.md)
- [Research](research.md)
- [Design Tokens](data-model.md)
