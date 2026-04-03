import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/home/presentation/widgets/project_btn.dart';

class ProjectItem extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectItem({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 850),
      child: AspectRatio(
        aspectRatio: 16 / 10,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ColorManager.border),
            boxShadow: AppShadow.md,
          ),
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: Image.asset(projectModel.projectImage, fit: BoxFit.cover),
              ),

              // Gradient overlay
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.3, 1.0],
                      colors: [Colors.transparent, Colors.black],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    projectModel.projectName,
                                    style: AppStyle.h4.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    projectModel.projectDescription,
                                    style: AppStyle.body.copyWith(
                                      color: Colors.white.withValues(alpha: 0.9),
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            ProjectBtn(
                              onTap: () {
                                context.go(
                                  '/projects/${handleTwoWordInLink(projectModel.projectName)}',
                                  extra: projectModel,
                                );
                              },
                            ),
                          ],
                        ),
                        if (projectModel.technologies.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: projectModel.technologies
                                .map(
                                  (tech) => Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withValues(alpha: 0.15),
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: Colors.white.withValues(alpha: 0.2),
                                      ),
                                    ),
                                    child: Text(
                                      tech,
                                      style: AppStyle.caption.copyWith(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // handle two word in link
  String handleTwoWordInLink(String name) {
    return name.replaceAll(' ', '-');
  }
}
