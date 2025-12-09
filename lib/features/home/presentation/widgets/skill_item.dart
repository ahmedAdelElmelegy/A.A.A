import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class SkillItem extends StatelessWidget {
  final String title;
  const SkillItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: ColorManager.primary.withValues(alpha: .15),
        border: Border.all(color: ColorManager.primary),
      ),
      child: Text(
        title,
        style: AppStyle.f16UrbanistMeduim.copyWith(color: ColorManager.primary),
      ),
    );
  }
}
