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
        horizontal: AppUtils.isDesktop(context) ? 80 : 16,
      ),
      child: Column(
        children: [
          Text(
            'My Work Process',
            style: AppStyle.f35UrbanistBold.copyWith(
              color: ColorManager.primary,
            ),
          ),
          SizedBox(height: 70),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: List.generate(
              AppConstants.myWorkProcessList.length,
              (index) => WorkProcessItem(
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
