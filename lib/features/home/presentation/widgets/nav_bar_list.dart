import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/nav_bar_item.dart';

class NavBarList extends StatelessWidget {
  final ScrollController pageController;
  final List<VoidCallback>? onSectionTaps;

  const NavBarList({
    super.key,
    required this.pageController,
    this.onSectionTaps,
  });

  static const List<String> navBarItems = [
    'Home',
    'About',
    'Process',
    'Skills',
    'Projects',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return AppUtils.isDesktop(context)
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              navBarItems.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  right: index == navBarItems.length - 1 ? 0 : AppSpacing.md,
                ),
                child: NavBarItem(
                  title: navBarItems[index],
                  onTap: () {
                    if (onSectionTaps != null && index < onSectionTaps!.length) {
                      onSectionTaps![index]();
                    } else {
                      // Fallback for contact or if taps aren't provided
                      final offset = index * 800.0;
                      pageController.animateTo(
                        offset,
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOutCubic,
                      );
                    }
                  },
                ),
              ),
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              navBarItems.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  bottom: index == navBarItems.length - 1 ? 0 : AppSpacing.md,
                ),
                child: NavBarItem(
                  title: navBarItems[index],
                  onTap: () {
                    if (onSectionTaps != null && index < onSectionTaps!.length) {
                      onSectionTaps![index]();
                    } else {
                      pageController.animateTo(
                        index * 1000.0, // rough estimate for mobile
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOutCubic,
                      );
                    }
                  },
                ),
              ),
            ),
          );
  }
}
