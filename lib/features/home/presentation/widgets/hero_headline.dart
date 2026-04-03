import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_btn.dart';
import 'package:portfolio/features/home/presentation/widgets/typing_text.dart';

class HeroHeading extends StatelessWidget {
  final VoidCallback? onViewWorkPressed;
  const HeroHeading({super.key, this.onViewWorkPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello, It's Me",
          style: AppStyle.h1.copyWith(color: ColorManager.textPrimary),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          'Ahmed Adel',
          style: AppStyle.display.copyWith(color: ColorManager.primary),
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "And I'm a",
              style: AppStyle.h2.copyWith(color: ColorManager.textPrimary),
            ),
            const SizedBox(width: AppSpacing.md),
            const TypingText(),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Text(
            'I am a dedicated Flutter developer with hands-on experience in building mobile apps, integrating APIs, managing Firebase services, and applying clean architecture principles. I learn rapidly, adapt to new challenges, and focus on writing maintainable, scalable code. I enjoy collaborating with teams and transforming ideas into polished user-friendly applications.',
            style: AppStyle.body.copyWith(
              color: ColorManager.textSecondary,
              height: 1.6,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        CustomBtn(
          label: 'View My Work',
          onPressed: onViewWorkPressed,
        ),
      ],
    );
  }
}
