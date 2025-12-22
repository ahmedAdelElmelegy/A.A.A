import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/home/presentation/widgets/skill_item.dart';

class ProjectTehnologyAndFeatures extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectTehnologyAndFeatures({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          child: SizedBox(
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Technologies', style: AppStyle.f22UrbanistBold),
                SizedBox(height: 16),
                Wrap(
                  runSpacing: 16,
                  spacing: 16,
                  children: List.generate(projectModel.technologies.length, (
                    index,
                  ) {
                    return SkillItem(title: projectModel.technologies[index]);
                  }),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 24),
        CustomContainer(
          child: SizedBox(
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Features', style: AppStyle.f22UrbanistBold),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(projectModel.features.length, (
                    index,
                  ) {
                    return Row(
                      children: [
                        Container(
                          width: 7,
                          height: 7,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManager.primary,
                          ),
                        ),
                        Text(
                          projectModel.features[index],
                          style: AppStyle.f16UrbanistMeduim.copyWith(
                            color: ColorManager.darkGrey,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
