import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
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
        vertical: 16,
        horizontal: AppUtils.isDesktop(context) ? 80 : 16,
      ),
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withValues(alpha: 0.1),
        //     blurRadius: 30,
        //     offset: const Offset(4, 4),
        //   ),
        // ],
        border: Border(
          bottom: BorderSide(color: Colors.black.withValues(alpha: 0.1)),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Router.neglect(context, () => context.pop()),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          const SizedBox(width: 24),
          Text(projectModel.projectName, style: AppStyle.f24UrbanistBold),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.play_arrow, color: ColorManager.primary),
                  const SizedBox(width: 8),
                  Text(
                    'Try the App',
                    style: AppStyle.f16UrbanistMeduim.copyWith(
                      color: ColorManager.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.github)),
        ],
      ),
    );
  }
}
