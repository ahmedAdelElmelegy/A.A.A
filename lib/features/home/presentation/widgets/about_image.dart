import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';

class AboutImage extends StatelessWidget {
  const AboutImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 512,
          width: 362,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: ColorManager.primary.withValues(alpha: 0.3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.3),
                blurRadius: 10,
                offset: Offset(5, 5),
              ),
            ],
          ),
        ),
        Container(
          height: 510,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: ColorManager.white,
          ),
        ),
        Container(
          height: 487,
          width: 337,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: ColorManager.primary.withValues(alpha: 0.8),
          ),
        ),
        Container(
          height: 485,
          width: 335,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: ColorManager.white,
          ),
        ),
        Container(
          height: 470,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: ColorManager.primary.withValues(alpha: 0.7),
          ),
        ),
        Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            image: DecorationImage(
              image: AssetImage('assets/images/profile2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
