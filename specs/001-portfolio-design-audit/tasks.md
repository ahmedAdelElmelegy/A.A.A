# Tasks: Portfolio Design Audit & UI/UX Improvements

**Input**: Design documents from `/specs/001-portfolio-design-audit/`
**Prerequisites**: plan.md (required), spec.md (required for user stories), research.md, data-model.md, quickstart.md

**Tests**: Not explicitly requested — test tasks omitted. Visual verification via browser testing.

**Organization**: Tasks are grouped by user story to enable independent implementation and testing of each story.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Can run in parallel (different files, no dependencies)
- **[Story]**: Which user story this task belongs to (e.g., US1, US2, US3)
- Include exact file paths in descriptions

## Path Conventions

- **Single Flutter project**: `lib/` at repository root
- Theme files: `lib/core/theme/`
- Utility files: `lib/core/utils/`
- Feature widgets: `lib/features/home/presentation/widgets/`
- Screens: `lib/features/home/presentation/screens/`

---

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: No new project initialization needed — this is an existing Flutter app. Setup consists of verifying the current state compiles and runs.

- [ ] T001 Verify project compiles and runs with `flutter run -d chrome` from the project root
- [ ] T002 Take baseline screenshots of every section (Hero, About, Work Process, Skills, Projects, Footer) at 375px, 768px, and 1920px viewports for comparison

---

## Phase 2: Foundational — Design Token System (Blocking Prerequisites)

**Purpose**: Establish the design token constants that ALL user story implementations depend on. This phase maps to FR-003, FR-004, FR-005, FR-006, FR-007 from the spec.

**⚠️ CRITICAL**: No user story work can begin until this phase is complete

- [ ] T003 Refactor color palette in `lib/core/theme/color.dart`: Add `accent` (#F59E0B), `accentDark` (#D97706), update `textPrimary` to #1A1A2E, replace `darkGrey` (#939393) with `textSecondary` (#525252), add `textMuted` (#6B7280), update `surface` to #F8FAFC, add `border` (#E2E8F0). Keep existing `primary` (#3B82F6) and `secondary` (#1E40AF) unchanged.
- [ ] T004 [P] Refactor typography scale in `lib/core/theme/style.dart`: Replace ad-hoc text styles with systematic scale — `display` (56px/w800/1.1), `h1` (40px/w800/1.2), `h2` (32px/w700/1.3), `h3` (24px/w600/1.3), `h4` (20px/w600/1.4), `body` (16px/w400/1.6), `bodyBold` (16px/w700/1.6), `caption` (14px/w500/1.5). All using Urbanist font family. Keep old style names as aliases initially for backward compatibility.
- [ ] T005 [P] Add spacing constants and shadow/radius tokens to `lib/core/utils/app_utils.dart`: Define `AppSpacing` class with `xs=8, sm=16, md=24, lg=32, xl=48, space2xl=64, space3xl=80`. Define `AppShadow` class with `sm`, `md`, `lg` BoxShadow presets. Define `AppRadius` class with `sm=8, md=12, lg=20, full=9999`.

**Checkpoint**: Design tokens ready — all subsequent phases reference these constants.

---

## Phase 3: User Story 1 — First Impression & Visual Hierarchy (Priority: P1) 🎯 MVP

**Goal**: Visitors immediately see the developer's name, role, and "View My Work" CTA above the fold with clear H1 > H2 > body typographic hierarchy.

**Independent Test**: Open portfolio on desktop (1920px) and mobile (375px). Verify: (1) name "Ahmed Adel" is the largest text, (2) "View My Work" CTA button is prominent with accent color, (3) font sizes decrease progressively, (4) CTA scrolls to Projects section.

### Implementation for User Story 1

- [ ] T006 [US1] Update hero headline typography in `lib/features/home/presentation/widgets/hero_headline.dart`: Change "Hello, It's Me" from f35 → `h1` (40px), "Ahmed Adel" from f50 → `display` (56px), "And I'm a" from f30 → `h2` (32px), description from f16 → `body` (16px) with `textSecondary` color (#525252 instead of #939393). Set description `SizedBox` width to use `ConstrainedBox(maxWidth: 800)` instead of fixed `SizedBox(width: 800)`.
- [ ] T007 [US1] Restyle CTA button in `lib/features/home/presentation/widgets/custom_btn.dart`: Change label from "Download CV" to "View My Work". Change `backgroundColor` from `ColorManager.primary` to `ColorManager.accent` (#F59E0B). Change hover color to `ColorManager.accentDark` (#D97706). Update text style from f14 → `caption` with white color. Increase button height from 50 → 56. Add `borderRadius: 12`. Change `onPressed` from `openLink(googleDriveUrl)` to accept and call a `VoidCallback onPressed` parameter (scroll to projects — wired in Phase 4/US5).
- [ ] T008 [US1] Update hero headline to pass scroll callback to CTA in `lib/features/home/presentation/widgets/hero_headline.dart`: Accept a `VoidCallback? onViewWorkPressed` parameter and pass it to `CustomBtn`. For now, make it optional with no-op default.
- [ ] T009 [US1] Update typing text typography in `lib/features/home/presentation/widgets/typing_text.dart`: Ensure animated text uses `h2` style (32px bold) with `ColorManager.primary` color for visual emphasis.
- [ ] T010 [US1] Verify hero section animation completes within 1 second in `lib/features/home/presentation/widgets/hero_section.dart`: Current `AnimationController` duration is 900ms ✓ — confirm this visually, no code change expected unless animation appears sluggish.

**Checkpoint**: Hero section delivers clear name → role → CTA hierarchy with "View My Work" button. Independently testable by opening the portfolio and checking the first viewport.

---

## Phase 4: User Story 2 — Consistent Color Palette & Contrast (Priority: P1)

**Goal**: All sections use the refined blue palette consistently with WCAG AA contrast compliance. No hardcoded color values outside `ColorManager`.

**Independent Test**: Scroll through all sections. Run Chrome Lighthouse accessibility audit — zero contrast failures. Search codebase for hardcoded `Color(0x...)` outside `color.dart` — should be zero.

### Implementation for User Story 2

- [ ] T011 [P] [US2] Replace hardcoded colors in `lib/features/home/presentation/widgets/footer_section.dart`: Replace `Color(0xff1E40AF)` → `ColorManager.secondary`, `Color(0xFF3B82F6)` → `ColorManager.primary`. Update subtitle text opacity from `alpha: 0.85` to `alpha: 0.9` for WCAG compliance. Update copyright from `Colors.white.withValues(alpha: 0.7)` → `Colors.white.withValues(alpha: 0.8)`. Update year from "2025" to dynamic `DateTime.now().year`.
- [ ] T012 [P] [US2] Replace hardcoded colors in `lib/features/home/presentation/widgets/fotter_icon.dart`: Ensure icon colors use `ColorManager.white` and hover states use palette values.
- [ ] T013 [P] [US2] Update skill item colors in `lib/features/home/presentation/widgets/skill_item.dart`: Change text color from `ColorManager.primary` to a darker `ColorManager.secondary` or `#2563EB` to ensure 4.5:1 contrast ratio on the light blue background chip.
- [ ] T014 [P] [US2] Update project card overlay contrast in `lib/features/home/presentation/widgets/project_item.dart`: Ensure project name uses `ColorManager.white` and description uses `Colors.white.withValues(alpha: 0.9)` for sufficient contrast against black87 gradient. Replace any `ColorManager.grey` text on dark backgrounds.
- [ ] T015 [P] [US2] Update home screen background gradient in `lib/features/home/presentation/screens/home_screen.dart`: Replace hardcoded `Color(0xFF4fc3f7)` and `Color(0xFF0288d1)` with `ColorManager.primary.withValues(alpha: 0.05)` and `ColorManager.secondary.withValues(alpha: 0.05)`.
- [ ] T016 [US2] Search all widget files for remaining hardcoded `Color(0x...)` values and replace with `ColorManager` references. Files to check: `custom_container.dart`, `custom_icon.dart`, `detail_item.dart`, `about_image.dart`, `about_image_section.dart`, `profile_shape.dart`, `work_process_item.dart`, `project_btn.dart`.

**Checkpoint**: Full color consistency — every color reference goes through `ColorManager`, WCAG AA contrast passes for all text.

---

## Phase 5: User Story 3 — Typography & Readability (Priority: P2)

**Goal**: All text uses the systematic type scale from Phase 2. Font sizes create clear hierarchy. Body text has proper line height (1.5–1.7).

**Independent Test**: Read About section and project descriptions on mobile (375px). Body text is comfortable to read. Section headings clearly differentiate from body text.

### Implementation for User Story 3

- [ ] T017 [P] [US3] Update section heading typography in `lib/features/home/presentation/widgets/skill_section.dart`: Change "Skills" heading from `f35UrbanistBold` → `h2` (32px) with `ColorManager.primary`.
- [ ] T018 [P] [US3] Update section heading typography in `lib/features/home/presentation/widgets/my_projects.dart`: Change "My Projects" heading from `f35UrbanistBold` → `h2` (32px) with `ColorManager.primary`.
- [ ] T019 [P] [US3] Update section heading typography in `lib/features/home/presentation/widgets/my_work_process.dart`: Change "My Work Process" heading from `f35UrbanistBold` → `h2` (32px) with `ColorManager.primary`.
- [ ] T020 [P] [US3] Update sub-section headings in `lib/features/home/presentation/widgets/about_experiance_section.dart`: Change "Education" and "Experience" from `f30UrbanistBold` → `h3` (24px). Update `DetailItem` title from current style → `h4` (20px).
- [ ] T021 [P] [US3] Update footer heading typography in `lib/features/home/presentation/widgets/footer_section.dart`: Change "Get in Touch" from `f35UrbanistBold` → `h2` (32px). Change subtitle from `f16UrbanistBold` → `body` style.
- [ ] T022 [P] [US3] Update skill category title in `lib/features/home/presentation/widgets/skill_category.dart`: Change from `f20UrbanistSemibold` → `h4` (20px/w600).
- [ ] T023 [P] [US3] Update detail item typography in `lib/features/home/presentation/widgets/detail_item.dart`: Apply `h4` for title, `body` for subtitle/content with proper `textSecondary` color.
- [ ] T024 [P] [US3] Update nav bar item typography in `lib/features/home/presentation/widgets/nav_bar_item.dart`: Change from `f16UrbanistMeduim` → `caption` (14px/w500).
- [ ] T025 [US3] Update project card typography in `lib/features/home/presentation/widgets/project_item.dart`: Change project name from `f22UrbanistBold` → `h4` (20px). Change description from `f16UrbanistMeduim` → `body`.

**Checkpoint**: Entire portfolio uses the systematic type scale. No references to old ad-hoc `AppStyle.fXX` styles remain in presentation layer.

---

## Phase 6: User Story 4 — Responsive Layout & Consistent Spacing (Priority: P2)

**Goal**: All spacing follows the 8px grid system. Layout adapts from 375px to 1920px without overflow.

**Independent Test**: Resize browser from 375px to 1920px continuously. No horizontal overflow. Section gaps are visually consistent.

### Implementation for User Story 4

- [ ] T026 [US4] Replace all hardcoded section spacing in `lib/features/home/presentation/screens/home_screen.dart`: Replace `SizedBox(height: 100)` between sections → `SizedBox(height: AppSpacing.space2xl)` (64px). Replace `SizedBox(height: 120)` above hero → `SizedBox(height: AppSpacing.space3xl)` (80px). Replace `SizedBox(height: 50)` below hero → `SizedBox(height: AppSpacing.xl)` (48px).
- [ ] T027 [P] [US4] Standardize horizontal padding across all sections. In `about_section.dart`, `skill_section.dart`, `my_projects.dart`, `my_work_process.dart`: Change desktop padding from mixed `80px`/`120px` → `AppSpacing.space3xl` (80px). Change mobile padding from `16px` → `AppSpacing.sm` (16px).
- [ ] T028 [P] [US4] Make project cards responsive in `lib/features/home/presentation/widgets/project_item.dart`: Replace fixed `width: 850, height: 500` with `ConstrainedBox(constraints: BoxConstraints(maxWidth: 850))` and `AspectRatio(aspectRatio: 16/10)`. On mobile, cards should be full-width.
- [ ] T029 [P] [US4] Fix internal spacing in `lib/features/home/presentation/widgets/skill_section.dart`: Change `SizedBox(height: 50)` → `AppSpacing.lg` (32px). Change `SizedBox(height: 24)` between categories → `AppSpacing.md` (24px) ✓ already correct.
- [ ] T030 [P] [US4] Fix internal spacing in `lib/features/home/presentation/widgets/my_projects.dart`: Change `SizedBox(height: 100)` after heading → `AppSpacing.xl` (48px). Ensure card `spacing: 24, runSpacing: 24` → `AppSpacing.md` (24px).
- [ ] T031 [US4] Replace all remaining hardcoded spacing values across all section widgets with `AppSpacing` constants. Check: `about_experiance_section.dart` (height: 36 → 32), `footer_section.dart` (vertical: 48 → AppSpacing.xl), `custom_container.dart`, `hero_headline.dart`.

**Checkpoint**: All spacing uses token constants. No hardcoded pixel values for spacing remain. Portfolio renders correctly at 375px, 768px, 1200px, and 1920px.

---

## Phase 7: User Story 5 — Smooth Navigation & Wayfinding (Priority: P2)

**Goal**: Sticky header, smooth GlobalKey-based scroll to sections, active section indicator, mobile hamburger menu with close behavior.

**Independent Test**: (1) Scroll down — header stays fixed at top. (2) Click each nav link — page scrolls to correct section. (3) On mobile, tap hamburger — drawer opens with nav links. (4) Active section highlights in nav.

### Implementation for User Story 5

- [ ] T032 [US5] Refactor home screen layout for sticky header in `lib/features/home/presentation/screens/home_screen.dart`: Wrap the body in a `Stack`. Place `Header` in a `Positioned(top: 0, left: 0, right: 0)` widget. Place `SingleChildScrollView` below with top padding equal to header height (~80px). Add `GlobalKey` for each section: `_heroKey`, `_aboutKey`, `_workProcessKey`, `_skillsKey`, `_projectsKey`, `_footerKey`. Attach each key to the respective section's parent widget.
- [ ] T033 [US5] Create scroll-to-section helper method in `lib/features/home/presentation/screens/home_screen.dart`: Implement `void _scrollToSection(GlobalKey key)` that gets the section's `RenderBox`, computes its position relative to the scroll view, and calls `pageController.animateTo()` with 500ms duration and `Curves.easeInOut`.
- [ ] T034 [US5] Implement active section tracking in `lib/features/home/presentation/screens/home_screen.dart`: Add `ScrollController` listener that compares `controller.offset` against each section's vertical position. Update `_activeIndex` state variable. Pass `activeIndex` to `Header`/`NavBarList`.
- [ ] T035 [US5] Update `lib/features/home/presentation/widgets/nav_bar_list.dart`: Remove hardcoded `index * 750.0` and `getScrollOffset()` scroll logic. Accept `List<VoidCallback> onSectionTaps` and `int activeIndex` from parent. Pass `isActive: activeIndex == index` to each `NavBarItem`.
- [ ] T036 [US5] Update active state in `lib/features/home/presentation/widgets/nav_bar_item.dart`: Style active item differently — add underline or filled background using `ColorManager.primary`. When `isActive == true`, apply primary color text and bottom border indicator.
- [ ] T037 [US5] Add backdrop blur and subtle shadow to sticky header in `lib/features/home/presentation/widgets/header.dart`: Wrap in `ClipRect` + `BackdropFilter(filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10))`. Add `BoxDecoration` with `color: Colors.white.withValues(alpha: 0.85)` and bottom border `ColorManager.border`.
- [ ] T038 [US5] Wire "View My Work" CTA to scroll to Projects in `lib/features/home/presentation/screens/home_screen.dart`: Pass `() => _scrollToSection(_projectsKey)` callback through `HeroSection` → `HeroHeading` → `CustomBtn`.
- [ ] T039 [US5] Update mobile drawer navigation in `lib/features/home/presentation/widgets/custom_drawer.dart`: Apply new typography (`caption` style), add branding (logo or name), use palette colors. Wire nav items to `_scrollToSection` callbacks and auto-close drawer after tapping.

**Checkpoint**: Navigation works end-to-end. Sticky header with blur, smooth scrolling, active indicator, mobile drawer. "View My Work" scrolls to Projects.

---

## Phase 8: User Story 6 — Section-Level Design Quality (Priority: P3)

**Goal**: Each section meets its individual design criteria — hero CTA ✓ (done in US1), skills scannable with Flutter prominence, projects show tech stack, about is engaging, footer is easy to use.

**Independent Test**: Review each section against its criteria: Skills = categorized with Flutter prominent, Projects = show tech chips, About = not a text wall, Footer = working contact links.

### Implementation for User Story 6

- [ ] T040 [P] [US6] Enhance skill section visual categorization in `lib/features/home/presentation/widgets/skill_category.dart`: Add an icon per category (e.g., phone icon for Mobile Development, code icon for Technical Skills, tools icon for Tools & Platforms). Use `h4` title with icon in a `Row`. Add subtle background container with `surface` color.
- [ ] T041 [P] [US6] Highlight Flutter-specific skills in `lib/features/home/presentation/widgets/skill_item.dart`: For skills containing "Flutter" or "Dart", use `ColorManager.accent` background tint instead of `primary` tint to make them visually prominent.
- [ ] T042 [P] [US6] Display tech stack chips on project cards in `lib/features/home/presentation/widgets/project_item.dart`: Add a `Wrap` of small chip widgets below the project description showing `projectModel.technologies`. Style as small rounded pills (`caption` text, semi-transparent white background).
- [ ] T043 [P] [US6] Uncomment and restore experience descriptions in `lib/features/home/presentation/widgets/about_experiance_section.dart`: Uncomment the `content` parameter on each `DetailItem` with the experience bullet points. Update `detail_item.dart` to render `content` text if provided, using `body` style with `textSecondary` color.
- [ ] T044 [P] [US6] Polish work process items in `lib/features/home/presentation/widgets/work_process_item.dart`: Apply `surface` background color, `shadowSm` shadow, `radiusMd` border radius. Use `h4` for title and `body` for description. Add icon tint with `ColorManager.primary`.
- [ ] T045 [US6] Review header logo and branding in `lib/features/home/presentation/widgets/header.dart`: Ensure logo `Image.asset('assets/images/logo.png', height: 40)` renders properly. On mobile, show logo alongside hamburger menu icon.

**Checkpoint**: Every section passes its individual design quality criteria. Skills are scannable with Flutter prominent, projects show tech stack, about has rich content, footer has working links.

---

## Phase 9: Polish & Cross-Cutting Concerns

**Purpose**: Final cleanup affecting multiple user stories

- [ ] T046 [P] Remove deprecated old `AppStyle` aliases from `lib/core/theme/style.dart` once all widgets have been migrated to the new type scale. Run `flutter analyze` to confirm zero references.
- [ ] T047 [P] Fix typo: rename `f16UrbanistMeduim` → `f16UrbanistMedium` in `lib/core/theme/style.dart` if any aliases remain (for backward compat during migration).
- [ ] T048 Run full `flutter analyze` — resolve all warnings and errors across the project.
- [ ] T049 Run portfolio in Chrome and perform visual regression test: compare each section at 375px, 768px, and 1920px against Phase 1 baseline screenshots. Verify all improvements are visible and no regressions.
- [ ] T050 Run Chrome Lighthouse accessibility audit — verify zero contrast failures (WCAG AA).
- [ ] T051 Verify page load + initial render < 3 seconds on standard connection. Check hero animation completes within 1 second.
- [ ] T052 Final commit with descriptive message summarizing all design audit changes.

---

## Dependencies & Execution Order

### Phase Dependencies

- **Setup (Phase 1)**: No dependencies — can start immediately
- **Foundational (Phase 2)**: Depends on Setup — **BLOCKS all user stories**
- **US1 (Phase 3)**: Depends on Phase 2
- **US2 (Phase 4)**: Depends on Phase 2. Can run in parallel with US1
- **US3 (Phase 5)**: Depends on Phase 2. Can run in parallel with US1/US2
- **US4 (Phase 6)**: Depends on Phase 2. Can run in parallel with US1/US2/US3
- **US5 (Phase 7)**: Depends on Phase 2 + US1 (CTA wiring needs hero modifications from T007/T008)
- **US6 (Phase 8)**: Depends on Phase 2. Can run in parallel with other stories
- **Polish (Phase 9)**: Depends on all user stories being complete

### User Story Dependencies

- **US1 (P1)**: After Phase 2 — independent
- **US2 (P1)**: After Phase 2 — independent
- **US3 (P2)**: After Phase 2 — independent (but benefits from US2 color changes)
- **US4 (P2)**: After Phase 2 — independent
- **US5 (P2)**: After Phase 2 + partial US1 (T007/T008 CTA refactor). **Recommended: do US1 first**
- **US6 (P3)**: After Phase 2 — independent (but benefits from US3 typography)

### Within Each User Story

- Foundational tokens (Phase 2) must exist before any story work
- [P] marked tasks within a story can run in parallel
- Non-[P] tasks should run in listed order

### Parallel Opportunities

- T003, T004, T005 (all foundational tokens — different files) ★
- T011, T012, T013, T014, T015 (all US2 color fixes — different files) ★
- T017, T018, T019, T020, T021, T022, T023, T024 (all US3 typography — different files) ★
- T027, T028, T029, T030 (all US4 spacing — different files) ★
- T040, T041, T042, T043, T044 (all US6 section polish — different files) ★
- US1 and US2 can run fully in parallel after Phase 2

---

## Parallel Example: User Story 2 (Color Fixes)

```text
# All these tasks modify different files and can run simultaneously:
T011: Fix footer_section.dart colors
T012: Fix fotter_icon.dart colors
T013: Fix skill_item.dart colors
T014: Fix project_item.dart colors
T015: Fix home_screen.dart gradient colors
# Then sequentially:
T016: Sweep remaining hardcoded colors
```

---

## Implementation Strategy

### MVP First (User Story 1 + 2 Only)

1. Complete Phase 1: Setup (T001–T002)
2. Complete Phase 2: Foundational tokens (T003–T005)
3. Complete Phase 3: US1 — Hero visual hierarchy + CTA (T006–T010)
4. Complete Phase 4: US2 — Color palette consistency (T011–T016)
5. **STOP and VALIDATE**: Portfolio has strong hero impression + consistent color palette
6. This alone delivers the two highest-impact P1 improvements

### Incremental Delivery

1. Phase 1 + 2 → Design system ready
2. + US1 → Hero CTA + hierarchy (MVP!)
3. + US2 → Color consistency across all sections
4. + US3 → Typography hierarchy throughout
5. + US4 → Responsive spacing
6. + US5 → Sticky nav + smooth scrolling
7. + US6 → Section-level polish
8. Phase 9 → Final cleanup and verification

---

## Notes

- [P] tasks = different files, no dependencies
- [Story] label maps task to specific user story for traceability
- Each user story is independently completable and testable
- Commit after each phase or logical group
- Stop at any checkpoint to validate the story independently
- The spec does not request TDD — no test tasks generated
- Visual verification via Chrome DevTools and Lighthouse replaces automated tests for this UI-focused feature
