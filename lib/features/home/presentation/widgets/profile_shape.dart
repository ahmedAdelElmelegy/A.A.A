import 'package:flutter/material.dart';

class ProfileShape extends StatelessWidget {
  const ProfileShape({
    super.key,
    required this.fadeAnim,
    required this.scaleAnim,
  });

  final Animation<double> fadeAnim;
  final Animation<double> scaleAnim;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnim,
      child: ScaleTransition(
        scale: scaleAnim,
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
      ),
    );
  }
}
