import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  const NavBarItem({
    required this.title,
    required this.onTap,
    this.isActive = false,
    super.key,
  });

  @override
  State<NavBarItem> createState() => NavBarItemState();
}

class NavBarItemState extends State<NavBarItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() {
        isHovering = value;
      }),
      onTap: widget.onTap,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),

        decoration: BoxDecoration(
          color: isHovering
              ? ColorManager.primary.withValues(alpha: .8)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.title,
          style: AppStyle.f16UrbanistMeduim.copyWith(
            color: isHovering ? ColorManager.white : ColorManager.black,
          ),
        ),
      ),
    );
  }
}
