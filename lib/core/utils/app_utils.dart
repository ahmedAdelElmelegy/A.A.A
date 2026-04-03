import 'package:flutter/material.dart';

class AppUtils {
  AppUtils._();

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 600;
  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 600 &&
      MediaQuery.sizeOf(context).width < 1200;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1200;
}

class AppSpacing {
  AppSpacing._();
  static const double xs = 8.0;
  static const double sm = 16.0;
  static const double md = 24.0;
  static const double lg = 32.0;
  static const double xl = 48.0;
  static const double space2xl = 64.0;
  static const double space3xl = 80.0;
}

class AppRadius {
  AppRadius._();
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 20.0;
  static const double full = 9999.0;

  static BorderRadius get radiusSm => BorderRadius.circular(sm);
  static BorderRadius get radiusMd => BorderRadius.circular(md);
  static BorderRadius get radiusLg => BorderRadius.circular(lg);
  static BorderRadius get radiusFull => BorderRadius.circular(full);
}

class AppShadow {
  AppShadow._();
  static List<BoxShadow> get sm => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ];
  static List<BoxShadow> get md => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.08),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ];
  static List<BoxShadow> get lg => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
      ];
  static List<BoxShadow> get subtle => [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ];
}
