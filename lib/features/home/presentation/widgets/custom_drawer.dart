import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/nav_bar_list.dart';

class CustomDrawer extends StatelessWidget {
  final ScrollController pageController;
  final List<VoidCallback>? onSectionTaps;

  const CustomDrawer({
    super.key,
    required this.pageController,
    this.onSectionTaps,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.background,
      elevation: 0,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 40,
                  errorBuilder: (context, error, stackTrace) => Text(
                    'AHMED ADEL',
                    style: AppStyle.h4.copyWith(
                      color: ColorManager.primary,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close_rounded),
                  color: ColorManager.textPrimary,
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.space2xl),
            NavBarList(
              pageController: pageController,
              onSectionTaps: onSectionTaps?.map((tap) {
                return () {
                  Navigator.pop(context); // Close drawer first
                  tap();
                };
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
