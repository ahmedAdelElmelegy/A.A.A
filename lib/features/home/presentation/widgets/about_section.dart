import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_utils.dart';

import 'package:portfolio/features/home/presentation/widgets/about_experiance_section.dart';
import 'package:portfolio/features/home/presentation/widgets/about_image_section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppUtils.isDesktop(context)
          ? EdgeInsets.symmetric(horizontal: 80)
          : EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        runSpacing: 50,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,

        children: [
          AboutImageSection(),

          SizedBox(width: 50),
          AboutExperianceSection(),
        ],
      ),
    );
  }
}
