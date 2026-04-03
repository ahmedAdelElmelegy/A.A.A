import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';

class WorkProcessItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final int index;

  const WorkProcessItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 550, minHeight: 220),
      decoration: BoxDecoration(
        color: ColorManager.background,
        borderRadius: AppRadius.radiusLg,
        boxShadow: AppShadow.subtle,
        border: Border.all(color: ColorManager.border.withValues(alpha: 0.5)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 20,
            child: Text(
              '0${index + 1}',
              style: AppStyle.display.copyWith(
                color: ColorManager.primary.withValues(alpha: 0.1),
                fontSize: 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSpacing.sm),
                  decoration: BoxDecoration(
                    color: ColorManager.primary.withValues(alpha: 0.1),
                    borderRadius: AppRadius.radiusSm,
                  ),
                  child: Icon(icon, color: ColorManager.primary, size: 24),
                ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  title,
                  style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  description,
                  style: AppStyle.body.copyWith(
                    color: ColorManager.textSecondary,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
