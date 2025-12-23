import 'package:flutter/material.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/home/presentation/widgets/footer_section.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_body.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_header.dart';

class ProjectScreen extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectScreen({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProjectHeader(projectModel: projectModel),
            SizedBox(height: 24),
            ProjectBody(projectModel: projectModel),
            SizedBox(height: 36),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
