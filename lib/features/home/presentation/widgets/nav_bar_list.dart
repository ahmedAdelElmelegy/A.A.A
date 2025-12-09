import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/widgets/nav_bar_item.dart';

class NavBarList extends StatelessWidget {
  final ScrollController pageController;
  const NavBarList({
    super.key,
    required this.navBarItems,
    required this.pageController,
  });

  final List<String> navBarItems;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
