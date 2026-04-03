import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_constants.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/work_process_item.dart';

class MyWorkProcess extends StatelessWidget {
  const MyWorkProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppUtils.isDesktop(context) ? AppSpacing.space3xl : AppSpacing.sm,
      ),
      child: Column(
        children: [
          Text(
            'My Work Process',
            style: AppStyle.h2.copyWith(
              color: ColorManager.primary,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            alignment: WrapAlignment.center,
            children: List.generate(
              AppConstants.myWorkProcessList.length,
              (index) => WorkProcessItem(
                index: index,
                icon: AppConstants.myWorkProcessList[index].icon,
                title: AppConstants.myWorkProcessList[index].title,
                description: AppConstants.myWorkProcessList[index].description,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
