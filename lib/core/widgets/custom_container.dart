import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  const CustomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: .3),
      ),
      child: child,
    );
  }
}
