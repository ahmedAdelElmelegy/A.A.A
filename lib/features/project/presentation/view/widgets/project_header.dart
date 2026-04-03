import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/function/url_function.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';

class ProjectHeader extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectHeader({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppSpacing.md,
        horizontal: AppUtils.isDesktop(context) ? AppSpacing.space3xl : AppSpacing.md,
      ),
      margin: const EdgeInsets.only(bottom: AppSpacing.lg),
      decoration: BoxDecoration(
        color: ColorManager.background,
        border: Border(
          bottom: BorderSide(color: ColorManager.border.withValues(alpha: 0.5)),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Router.neglect(context, () => context.pop()),
            icon: Icon(Icons.arrow_back_rounded, color: ColorManager.textPrimary),
            tooltip: 'Go Back',
          ),
          const SizedBox(width: AppSpacing.md),
          Text(
            projectModel.projectName,
            style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: () => openLink(projectModel.applink),
            style: TextButton.styleFrom(
              foregroundColor: ColorManager.primary,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              shape: RoundedRectangleBorder(borderRadius: AppRadius.radiusSm),
            ),
            icon: const Icon(Icons.play_circle_outline_rounded),
            label: Text('Try App', style: AppStyle.bodyBold),
          ),
          if (AppUtils.isDesktop(context)) const SizedBox(width: AppSpacing.sm),
          IconButton(
            onPressed: () => openLink(projectModel.githupLink),
            icon: const Icon(FontAwesomeIcons.github),
            color: ColorManager.textSecondary,
            tooltip: 'GitHub Repository',
          ),
        ],
      ),
    );
  }
}
