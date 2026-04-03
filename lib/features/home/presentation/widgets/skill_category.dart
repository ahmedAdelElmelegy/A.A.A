import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/skill_item.dart';

class SkillCategory extends StatelessWidget {
  const SkillCategory({
    super.key,
    required this.title,
    required this.skills,
    this.icon,
  });

  final String title;
  final List<String> skills;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: ColorManager.surface,
        borderRadius: AppRadius.radiusMd,
        border: Border.all(color: ColorManager.border.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 20, color: ColorManager.primary),
                const SizedBox(width: 8),
              ],
              Text(
                title,
                style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12,
            runSpacing: 12,
            children: skills.map((e) => SkillItem(title: e)).toList(),
          ),
        ],
      ),
    );
  }
}
