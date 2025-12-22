import 'package:flutter/material.dart';

class ProjectSmImage extends StatelessWidget {
  final bool isSelected;
  const ProjectSmImage({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.black : Colors.transparent,
          width: isSelected ? 2 : 0,
        ),
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
