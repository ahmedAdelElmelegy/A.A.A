import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/features/home/presentation/widgets/skill_item.dart';

class SkillCategory extends StatelessWidget {
  const SkillCategory({super.key, required this.title, required this.skills});

  final String title;
  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: AppStyle.f20UrbanistSemibold),
        SizedBox(height: 12),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          runSpacing: 12,
          children: skills.map((e) => SkillItem(title: e)).toList(),
        ),
      ],
    );
  }
}
