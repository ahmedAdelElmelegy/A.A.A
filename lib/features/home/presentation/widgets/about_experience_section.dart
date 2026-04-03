import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/core/widgets/custom_icon.dart';
import 'package:portfolio/features/home/presentation/widgets/detail_item.dart';

class AboutExperienceSection extends StatelessWidget {
  const AboutExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Column(
        children: [
          CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CustomIcon(icon: Icons.school),
                    const SizedBox(width: AppSpacing.md),
                    Text(
                      'Education',
                      style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                const DetailItem(
                  title: '2020-2025: Faculty of Electronic Engineering',
                  subtitle: 'Menoufia University',
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),

          CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CustomIcon(icon: Icons.work_history_rounded),
                    const SizedBox(width: AppSpacing.md),
                    Text(
                      'Experience',
                      style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                const DetailItem(
                  title:
                      '2025 (Sep – Nov): Flutter Development Intern — Acme Integrated Engineering System (IES)',
                  subtitle: 'Cairo, Egypt',
                ),
                Divider(
                  height: AppSpacing.xl,
                  color: ColorManager.border.withValues(alpha: 0.5),
                ),
                const DetailItem(
                  title:
                      '2025 (Aug – Sep): Flutter Development Intern — PureSoft',
                  subtitle: 'Shebin El-Kom, Egypt',
                ),
                Divider(
                  height: AppSpacing.xl,
                  color: ColorManager.border.withValues(alpha: 0.5),
                ),
                const DetailItem(
                  title:
                      '2024 (Jul – Aug): UI/UX Training Program — Information Technology Institute (ITI)',
                  subtitle: 'Shebin El-Kom, Egypt',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
