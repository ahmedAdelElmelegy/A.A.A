import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_btn.dart';

class HeroHeading extends StatelessWidget {
  const HeroHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello, It\'s Me', style: AppStyle.f35UrbanistBold),
        SizedBox(height: 8),
        Text('Ahmed Adel', style: AppStyle.f40UrbanistBold),
        SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('And  I\'m a', style: AppStyle.f35UrbanistBold),
            SizedBox(width: 20),
            TypingText(),
          ],
        ),
        // RichText(
        //   text: TextSpan(
        //     children: [
        //       TextSpan(text: 'And  I\'m a', style: AppStyle.f35UrbanistBold),
        //       TextSpan(
        //         text: ' Flutter Developer',
        //         style: AppStyle.f35UrbanistBold.copyWith(
        //           color: ColorManager.primary,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
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

class TypingText extends StatelessWidget {
  const TypingText({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: DefaultTextStyle(
        style: AppStyle.f35UrbanistBold.copyWith(color: ColorManager.primary),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              'Flutter Developer',
              speed: Duration(milliseconds: 80),
            ),
            TypewriterAnimatedText(
              'UI/UX Designer',
              speed: Duration(milliseconds: 80),
            ),
          ],
        ),
      ),
    );
  }
}

class MarqueeText extends StatelessWidget {
  final String text;
  const MarqueeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: text,
      style: AppStyle.f35UrbanistBold.copyWith(color: ColorManager.primary),
      scrollAxis: Axis.horizontal,
      blankSpace: 30,
      velocity: 45,
      startPadding: 10,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
      pauseAfterRound: Duration(milliseconds: 400),
    );
  }
}
