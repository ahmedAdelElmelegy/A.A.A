import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class DetailItem extends StatelessWidget {
  final String title, subtitle;
  final String? content;
  const DetailItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.f22UrbanistBold),
        SizedBox(height: 8),
        Text(
          subtitle,
          style: AppStyle.f16UrbanistBold.copyWith(
            fontStyle: FontStyle.italic,
            color: ColorManager.darkGrey,
          ),
        ),
        SizedBox(height: 24),
        content != null
            ? Text(
                content!,
                style: AppStyle.f14Urbanistbold.copyWith(
                  color: ColorManager.darkGrey,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
