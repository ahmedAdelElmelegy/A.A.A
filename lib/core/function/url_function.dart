import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:url_launcher/url_launcher.dart';

void openLink(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication, // opens in new tab on web
  )) {
    throw 'Could not launch $url';
  }
}

void showCopyNumberDialog(
  BuildContext context,
  String phoneNumber,
  String name,
) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: ColorManager.background,
        shape: RoundedRectangleBorder(borderRadius: AppRadius.radiusLg),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              name,
              style: AppStyle.h4.copyWith(color: ColorManager.textPrimary),
            ),

            const SizedBox(height: AppSpacing.lg),

            // Number
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: ColorManager.surface,
                borderRadius: AppRadius.radiusMd,
                border: Border.all(color: ColorManager.border),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      phoneNumber,
                      style: AppStyle.bodyBold.copyWith(
                        color: ColorManager.primary,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy_rounded, size: 20),
                    color: ColorManager.textSecondary,
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: phoneNumber));
                      Navigator.pop(context);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: ColorManager.primary,
                          content: Text(
                            "$name copied to clipboard",
                            style: AppStyle.body.copyWith(color: Colors.white),
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSpacing.lg),

            // Close Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: AppRadius.radiusMd,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text("Close", style: AppStyle.bodyBold),
              ),
            ),
          ],
        ),
      );
    },
  );
}
