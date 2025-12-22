import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_image_desktop.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_image_tablet_and_mobile.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_list_title.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_techology_and_feature.dart';

class ProjectBody extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectBody({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppUtils.isDesktop(context) ? 80 : 16,
      ),
      child: Wrap(
        runSpacing: 24,
        spacing: 24,
        children: [
          SizedBox(
            width: 1007,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProjectListTitle(projectModel: projectModel),
                SizedBox(height: 24),
                AppUtils.isDesktop(context)
                    ? ProjectImageDesktop(projectModel: projectModel)
                    : ProjectImageTabletAndMobile(projectModel: projectModel),
              ],
            ),
          ),

          ProjectTehnologyAndFeatures(projectModel: projectModel),
        ],
      ),
    );
  }
}
