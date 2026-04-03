import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  const NavBarItem({
    required this.title,
    required this.onTap,
    this.isActive = false,
    super.key,
  });

  @override
  State<NavBarItem> createState() => NavBarItemState();
}

class NavBarItemState extends State<NavBarItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.isActive || isHovering;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.xs,
            horizontal: AppSpacing.md,
          ),
          decoration: BoxDecoration(
            color: isSelected
                ? ColorManager.primary.withValues(alpha: 0.08)
                : Colors.transparent,
            borderRadius: AppRadius.radiusSm,
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: AppStyle.bodyBold.copyWith(
              color: isSelected
                  ? ColorManager.primary
                  : ColorManager.textPrimary.withValues(alpha: 0.8),
              letterSpacing: 0.5,
            ),
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}
