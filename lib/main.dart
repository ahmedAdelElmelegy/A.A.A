import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/core/router/app_router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ahmed Adel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: ColorManager.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.primary,
          primary: ColorManager.primary,
          surface: ColorManager.surface,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primary,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: AppRadius.radiusMd),
            textStyle: AppStyle.bodyBold,
          ),
        ),
      ),
      routerConfig: router,
    );
  }
}
