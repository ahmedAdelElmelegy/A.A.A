import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class TypingText extends StatelessWidget {
  const TypingText({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: DefaultTextStyle(
        style: AppStyle.f30UrbanistBold.copyWith(color: ColorManager.primary),
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
