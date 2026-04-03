import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class SkillItem extends StatelessWidget {
  final String title;
  const SkillItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final bool isFlutter =
        title.toLowerCase().contains('flutter') || title.toLowerCase().contains('dart');
    final Color baseColor = isFlutter ? ColorManager.accent : ColorManager.primary;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: baseColor.withValues(alpha: .1),
        border: Border.all(color: baseColor.withValues(alpha: 0.5)),
      ),
      child: Text(
        title,
        style: AppStyle.bodyBold.copyWith(
          color: isFlutter ? ColorManager.accentDark : ColorManager.secondary,
        ),
      ),
    );
  }
}
