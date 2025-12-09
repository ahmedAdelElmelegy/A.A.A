import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/core/widgets/custom_icon.dart';

class WorkProcessItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const WorkProcessItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550,
      child: CustomContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIcon(icon: icon),
            SizedBox(height: 24),
            Text(title, style: AppStyle.f22UrbanistBold),
            SizedBox(height: 8),
            Text(
              description,
              style: AppStyle.f16UrbanistMeduim.copyWith(
                color: ColorManager.darkGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
