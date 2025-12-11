import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';

class FotterIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  const FotterIcon({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.white,
        child: Icon(icon, color: ColorManager.secondary),
      ),
    );
  }
}
