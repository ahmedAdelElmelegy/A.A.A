import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/core/widgets/custom_icon.dart';
import 'package:portfolio/features/home/presentation/widgets/detail_item.dart';

class AboutExperianceSection extends StatelessWidget {
  const AboutExperianceSection({super.key});

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
                    CustomIcon(icon: Icons.school),
                    SizedBox(width: 16),
                    Text('Education', style: AppStyle.f30UrbanistBold),
                  ],
                ),
                SizedBox(height: 36),
                DetailItem(
                  title: '2020-2025: Faculty of Electronic Engineering',
                  subtitle: 'Menoufia University',
                ),
              ],
            ),
          ),
          SizedBox(height: 24),

          CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomIcon(icon: Icons.category),
                    SizedBox(width: 16),
                    Text('Experience', style: AppStyle.f30UrbanistBold),
                  ],
                ),
                SizedBox(height: 36),
                DetailItem(
                  title:
                      '2025 (Sep – Nov): Flutter Development Intern — Acme Integrated Engineering System (IES)',
                  subtitle: 'Cairo, Egypt',
                  // content:
                  //     "Built scalable Flutter apps using clean architecture, SOLID, and multi-package structure.\n"
                  //     "Developed customs services platform for shipment tracking, document handling & verification.\n"
                  //     "Created responsive Flutter Web & Mobile UIs from Figma designs.\n"
                  //     "Integrated REST APIs and implemented secure authentication & user management.\n"
                  //     "Ensured cross-platform performance and collaborated using Git & GitHub.\n",
                ),
                SizedBox(height: 24),
                DetailItem(
                  title:
                      '2025 (Aug – Sep): Flutter Development Intern — PureSoft',
                  subtitle: 'Shebin El-Kom, Egypt',
                  // content:
                  //     "Developed maintainable Flutter apps using BLoC & MVVM architectures .\n"
                  //     "Integrated REST APIs, dynamic content, and live streaming .\n"
                  //     "Implemented Google Maps and local notifications .\n"
                  //     "Designed responsive & adaptive UI for Web + Mobile .\n"
                  //     "Collaborated with the team using Git, following clean architecture.\n",
                ),
                DetailItem(
                  title:
                      '2024 (Jul – Aug): UI/UX Training Program — Information Technology Institute (ITI)',
                  subtitle: 'Shebin El-Kom, Egypt',
                  // content:
                  //     "Learned UI/UX design principles and industry best practices.\n"
                  //     "Designed user-centric mobile interfaces.\n"
                  //     "Gained skills in responsive & adaptive design tools.\n",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
