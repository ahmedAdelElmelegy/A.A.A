import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
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
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Technologies',
                  style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
                ),
                const SizedBox(height: AppSpacing.md),
                Wrap(
                  runSpacing: AppSpacing.md,
                  spacing: AppSpacing.md,
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
        const SizedBox(height: AppSpacing.lg),
        CustomContainer(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Features',
                  style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
                ),
                const SizedBox(height: AppSpacing.md),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(projectModel.features.length, (
                    index,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: AppSpacing.sm),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorManager.primary.withValues(alpha: 0.6),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              projectModel.features[index],
                              style: AppStyle.body.copyWith(
                                color: ColorManager.textSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
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
