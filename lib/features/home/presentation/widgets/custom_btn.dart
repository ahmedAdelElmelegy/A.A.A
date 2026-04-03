import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class CustomBtn extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;
  const CustomBtn({super.key, this.label = 'View My Work', this.onPressed});

  @override
  State<CustomBtn> createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isHover
              ? ColorManager.accentDark
              : ColorManager.accent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: isHover ? 4 : 2,
        ),
        onHover: (value) => setState(() {
          isHover = value;
        }),
        onPressed: widget.onPressed,
        child: Text(
          widget.label,
          style: AppStyle.caption.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
