import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';

class ProjectListTitle extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectListTitle({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectModel.projectName,
            style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            projectModel.projectDescription,
            style: AppStyle.body.copyWith(
              color: ColorManager.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
