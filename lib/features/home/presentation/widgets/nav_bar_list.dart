import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/nav_bar_item.dart';

class NavBarList extends StatelessWidget {
  final ScrollController pageController;
  const NavBarList({super.key, required this.pageController});

  static const List<String> navBarItems = [
    'Home',
    'About',
    'Skills',
    'Projects',
    'Contact',
  ];
  @override
  Widget build(BuildContext context) {
    return AppUtils.isDesktop(context)
        ? Row(
            children: List.generate(
              navBarItems.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  right: index == navBarItems.length - 1 ? 0 : 16,
                ),
                child: NavBarItem(
                  title: navBarItems[index],
                  onTap: () {
                    pageController.animateTo(
                      index * 800.0,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    );
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
                  bottom: index == navBarItems.length - 1 ? 0 : 16,
                ),
                child: NavBarItem(
                  title: navBarItems[index],
                  onTap: () {
                    pageController.animateTo(
                      index * 800.0,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            ),
          );
  }
}
