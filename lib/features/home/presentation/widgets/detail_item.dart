import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';

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
        Text(
          title,
          style: AppStyle.bodyBold.copyWith(color: ColorManager.textPrimary),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          subtitle,
          style: AppStyle.caption.copyWith(
            fontStyle: FontStyle.italic,
            color: ColorManager.secondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (content != null) ...[
          const SizedBox(height: AppSpacing.sm),
          Text(
            content!,
            style: AppStyle.body.copyWith(
              color: ColorManager.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ],
    );
  }
}
