import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/features/home/presentation/widgets/skill_category.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Skills',
          style: AppStyle.f35UrbanistBold.copyWith(color: ColorManager.primary),
        ),
        SizedBox(height: 50),

        // Frameworks & Architecture
        SizedBox(height: 24),

        // Mobile Development
        SkillCategory(
          title: "Mobile Development",
          skills: [
            "Responsive & Adaptive Design",
            "Flutter Apps",
            "GetX",
            "Bloc",
            "Provider",
            "Google Maps SDK",
            "Geolocator",
          ],
        ),

        SizedBox(height: 24),
        SkillCategory(
          title: "Technical Skills",
          skills: [
            "REST APIs",
            "Firebase",
            "Google Maps API",
            "Location Services",
            "Push Notifications (FCM)",
          ],
        ),
        SizedBox(height: 24),
        // Tools & Platforms
        SkillCategory(
          title: "Tools & Platforms",
          skills: ["Visual Studio Code", "Android Studio", "Git", "GitHub"],
        ),
        SizedBox(height: 24),
        SkillCategory(
          title: "Frameworks & Architecture",
          skills: ["Clean Architecture", "MVC", "MVVM"],
        ),
        SizedBox(height: 24),
        SkillCategory(
          title: "Programming Languages",
          skills: ["Dart", "Java", "C++", "Python"],
        ),

        SizedBox(height: 24),
        // Payment
        SkillCategory(title: "Payment Integration", skills: ["Stripe"]),

        // Technical Skills
      ],
    );
  }
}
