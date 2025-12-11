import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_btn.dart';
import 'package:portfolio/features/home/presentation/widgets/typing_text.dart';

class HeroHeading extends StatelessWidget {
  const HeroHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello, It\'s Me', style: AppStyle.f35UrbanistBold),
        SizedBox(height: 8),
        Text('Ahmed Adel', style: AppStyle.f50UrbanistBold),
        SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('And  I\'m a', style: AppStyle.f30UrbanistBold),
            SizedBox(width: 20),
            TypingText(),
          ],
        ),

        SizedBox(height: 24),
        SizedBox(
          width: 800,
          child: Text(
            'I am a dedicated Flutter developer with hands-on experience in building mobile apps, integrating APIs, managing Firebase services, and applying clean architecture principles. I learn rapidly, adapt to new challenges, and focus on writing maintainable, scalable code. I enjoy collaborating with teams and transforming ideas into polished user-friendly applications.',
            style: AppStyle.f16UrbanistMeduim.copyWith(
              color: ColorManager.darkGrey,
            ),
          ),
        ),
        SizedBox(height: 48),
        CustomBtn(),
      ],
    );
  }
}
