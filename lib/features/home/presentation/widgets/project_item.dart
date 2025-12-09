import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/home/presentation/widgets/project_btn.dart';

class ProjectItem extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectItem({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 500,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorManager.black.withValues(alpha: .2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .08),
            blurRadius: 20,
            spreadRadius: 1,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(projectModel.projectImage, fit: BoxFit.fill),
          ),

          // Gradient overlay
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 160,
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                  top: 50,
                ), // Add padding for text
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black87],
                  ),
                ),
                // Align text at bottom left
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              projectModel.projectName,
                              style: AppStyle.f22UrbanistBold.copyWith(
                                color: ColorManager.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              projectModel.projectDescription,
                              style: AppStyle.f16UrbanistMeduim.copyWith(
                                color: ColorManager.grey,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      ProjectBtn(onTap: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
