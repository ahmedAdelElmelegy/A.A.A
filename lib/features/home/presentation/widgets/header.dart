import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/features/home/presentation/widgets/nav_bar_list.dart';

class Header extends StatelessWidget {
  final ScrollController pageController;
  const Header({super.key, required this.pageController});
  static const List<String> navBarItems = [
    'Home',
    'About',
    'Skills',
    'Projects',
    'Contact',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: ColorManager.grey, width: .5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/logo.svg', height: 32),
          const Spacer(),
          NavBarList(navBarItems: navBarItems, pageController: pageController),
        ],
      ),
    );
  }
}
