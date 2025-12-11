import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/nav_bar_list.dart';

class Header extends StatelessWidget {
  final void Function()? onMenuTap;
  final ScrollController pageController;
  const Header({super.key, required this.pageController, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppUtils.isDesktop(context) ? 120 : 16,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: ColorManager.grey, width: .5)),
      ),
      child: AppUtils.isDesktop(context)
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/logo.svg', height: 32),
                const Spacer(),

                NavBarList(pageController: pageController),
              ],
            )
          : Row(
              children: [InkWell(onTap: onMenuTap, child: Icon(Icons.menu))],
            ),
    );
  }
}
