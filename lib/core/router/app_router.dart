import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/router/routes.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/home/presentation/screens/home_screen.dart';
import 'package:portfolio/features/project/presentation/view/screens/project.dart';

final router = GoRouter(
  redirect: (context, state) {
    if (state.extra == null) {
      return Routes.home;
    }
    return null;
  },
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: Routes.projects,
          pageBuilder: (context, state) => _buildPageWithSlideTransition(
            key: state.pageKey,
            child: ProjectScreen(projectModel: state.extra as ProjectModel),
          ),
        ),
      ],
    ),
  ],
);

CustomTransitionPage _buildPageWithSlideTransition({
  required LocalKey key,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
