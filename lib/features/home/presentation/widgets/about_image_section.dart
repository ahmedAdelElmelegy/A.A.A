import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class AboutImageSection extends StatelessWidget {
  const AboutImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: AppStyle.f35UrbanistBold.copyWith(
              color: ColorManager.primary,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Designing Interfaces That Users Love',
            style: AppStyle.f20UrbanistSemibold.copyWith(
              // color: ColorManager.darkGrey,
              // fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 36),
          Text(
            "Hi, I’m Ahmed — a passionate Flutter Developer with over 5 Months "
            "of experience building beautiful, fast, and user-friendly mobile "
            "and web applications. I love turning ideas into high-quality products "
            "using clean architecture, animations, and modern UI principles",
            style: AppStyle.f16UrbanistMeduim,
          ),
          SizedBox(height: 36),
          Column(
            children: [
              Container(
                height: 500,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/about_flutter.webp'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
