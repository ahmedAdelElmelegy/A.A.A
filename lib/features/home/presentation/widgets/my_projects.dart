import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_constants.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/project_item.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppUtils.isDesktop(context) ? AppSpacing.space3xl : AppSpacing.sm,
      ),
      child: Column(
        children: [
          Text(
            'My Projects',
            style: AppStyle.h2.copyWith(
              color: ColorManager.primary,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: List.generate(
              AppConstants.projectList.length,
              (index) =>
                  ProjectItem(projectModel: AppConstants.projectList[index]),
            ),
          ),
        ],
      ),
    );
  }
}
