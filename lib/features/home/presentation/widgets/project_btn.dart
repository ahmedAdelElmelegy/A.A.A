import 'package:flutter/material.dart';

class ProjectBtn extends StatefulWidget {
  final void Function()? onTap;
  const ProjectBtn({super.key, this.onTap});

  @override
  State<ProjectBtn> createState() => _ProjectBtnState();
}

class _ProjectBtnState extends State<ProjectBtn> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) => setState(() {
        isHover = value;
      }),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.white,
        child: Icon(
          isHover ? Icons.arrow_upward_rounded : Icons.arrow_forward_rounded,
        ),
      ),
    );
  }
}
