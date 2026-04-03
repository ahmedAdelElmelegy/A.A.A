import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';

class AboutImageSection extends StatelessWidget {
  const AboutImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: AppStyle.h2.copyWith(color: ColorManager.primary),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Designing Interfaces That Users Love',
            style: AppStyle.h4.copyWith(
              color: ColorManager.textSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Text(
            "Hi, I’m Ahmed — a passionate Flutter Developer with over 1 Year "
            "of experience building beautiful, fast, and user-friendly mobile "
            "and web applications. I love turning ideas into high-quality products "
            "using clean architecture, animations, and modern UI principles",
            style: AppStyle.body.copyWith(
              color: ColorManager.textPrimary,
              height: 1.6,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: AppRadius.radiusLg,
              boxShadow: AppShadow.subtle,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/about_flutter.webp'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
