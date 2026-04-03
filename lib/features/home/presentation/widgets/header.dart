import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/nav_bar_list.dart';

class Header extends StatelessWidget {
  final VoidCallback? onMenuTap;
  final ScrollController pageController;
  final List<VoidCallback>? onSectionTaps;

  const Header({
    super.key,
    required this.pageController,
    this.onMenuTap,
    this.onSectionTaps,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppUtils.isDesktop(context)
                ? AppSpacing.space3xl
                : AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          decoration: BoxDecoration(
            color: ColorManager.white.withValues(alpha: 0.8),
            border: Border(
              bottom: BorderSide(
                color: ColorManager.border.withValues(alpha: 0.5),
                width: 1,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
              if (AppUtils.isDesktop(context))
                NavBarList(
                  pageController: pageController,
                  onSectionTaps: onSectionTaps,
                )
              else
                IconButton(
                  onPressed: onMenuTap,
                  icon: const Icon(Icons.menu_rounded),
                  color: ColorManager.textPrimary,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
