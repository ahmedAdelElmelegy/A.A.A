import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/skill_category.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppUtils.isDesktop(context) ? AppSpacing.space3xl : AppSpacing.sm,
      ),
      child: Column(
        children: [
          Text(
            'Skills',
            style: AppStyle.h2.copyWith(
              color: ColorManager.primary,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Frameworks & Architecture
          SkillCategory(
            title: "Frameworks & Architecture",
            icon: FontAwesomeIcons.layerGroup,
            skills: const ["Clean Architecture", "MVC", "MVVM"],
          ),
          const SizedBox(height: AppSpacing.md),

          // Mobile Development
          SkillCategory(
            title: "Mobile Development",
            icon: FontAwesomeIcons.mobileScreenButton,
            skills: const [
              "Responsive & Adaptive Design",
              "Flutter Apps",
              "GetX",
              "Bloc",
              "Provider",
              "Google Maps SDK",
              "Geolocator",
            ],
          ),

          const SizedBox(height: AppSpacing.md),
          SkillCategory(
            title: "Technical Skills",
            icon: FontAwesomeIcons.code,
            skills: const [
              "REST APIs",
              "Firebase",
              "Google Maps API",
              "Location Services",
              "Push Notifications (FCM)",
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          // Tools & Platforms
          SkillCategory(
            title: "Tools & Platforms",
            icon: FontAwesomeIcons.screwdriverWrench,
            skills: const ["Visual Studio Code", "Android Studio", "Git", "GitHub"],
          ),
          const SizedBox(height: AppSpacing.md),
          SkillCategory(
            title: "Programming Languages",
            icon: FontAwesomeIcons.terminal,
            skills: const ["Dart", "Java", "C++", "Python"],
          ),

          const SizedBox(height: AppSpacing.md),
          // Payment
          SkillCategory(
            title: "Payment Integration",
            icon: FontAwesomeIcons.creditCard,
            skills: const ["Stripe"],
          ),
        ],
      ),
    );
  }
}
