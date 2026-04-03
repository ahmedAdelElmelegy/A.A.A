import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_utils.dart';

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
            borderRadius: AppRadius.radiusLg,
            boxShadow: AppShadow.subtle,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
      ),
    );
  }
}
