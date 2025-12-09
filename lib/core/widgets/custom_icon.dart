import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorManager.primary.withValues(alpha: .3),
      ),
      child: Icon(icon, color: ColorManager.primary, size: 30),
    );
  }
}
