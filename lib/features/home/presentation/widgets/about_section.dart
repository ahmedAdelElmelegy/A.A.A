import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/about_experience_section.dart';
import 'package:portfolio/features/home/presentation/widgets/about_image_section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppUtils.isDesktop(context) ? AppSpacing.space3xl : AppSpacing.md,
      ),
      child: Wrap(
        runSpacing: AppSpacing.xl,
        spacing: AppSpacing.xl,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: const [
          AboutImageSection(),
          AboutExperienceSection(),
        ],
      ),
    );
  }
}
