import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/constants.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_constants.dart';
import 'package:portfolio/features/home/presentation/widgets/project_item.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Projects',
          style: AppStyle.f35UrbanistBold.copyWith(color: ColorManager.primary),
        ),
        SizedBox(height: 100),
        Wrap(
          spacing: 24,
          runSpacing: 24,
          children: List.generate(
            AppConstants.projectList.length,
            (index) =>
                ProjectItem(projectModel: AppConstants.projectList[index]),
          ),
        ),
      ],
    );
  }
}
