import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/utils/app_utils.dart';

class FooterIcon extends StatefulWidget {
  final IconData icon;
  final void Function()? onTap;
  const FooterIcon({super.key, required this.icon, this.onTap});

  @override
  State<FooterIcon> createState() => _FooterIconState();
}

class _FooterIconState extends State<FooterIcon> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: InkWell(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isHover ? ColorManager.accent : Colors.white,
            shape: BoxShape.circle,
            boxShadow: isHover ? AppShadow.md : AppShadow.sm,
          ),
          child: Icon(
            widget.icon,
            color: isHover ? Colors.white : ColorManager.secondary,
            size: 24,
          ),
        ),
      ),
    );
  }
}
