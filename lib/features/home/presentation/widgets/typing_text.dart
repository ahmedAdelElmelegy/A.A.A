import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class TypingText extends StatelessWidget {
  const TypingText({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Center(
        child: DefaultTextStyle(
          style: AppStyle.h2.copyWith(
            color: ColorManager.primary,
            height: 1.0,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Flutter Developer',
                speed: const Duration(milliseconds: 80),
              ),
              TypewriterAnimatedText(
                'UI/UX Designer',
                speed: const Duration(milliseconds: 80),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
