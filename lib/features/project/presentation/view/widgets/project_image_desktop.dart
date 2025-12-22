import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_sm_image.dart';

class ProjectImageDesktop extends StatefulWidget {
  final ProjectModel projectModel;
  const ProjectImageDesktop({super.key, required this.projectModel});

  @override
  State<ProjectImageDesktop> createState() => _ProjectImageDesktopState();
}

class _ProjectImageDesktopState extends State<ProjectImageDesktop> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: SizedBox(
        child: Wrap(
          direction: Axis.horizontal,

          children: [
            SizedBox(
              height: 600,
              width: 150,
              child: ListView.builder(
                itemCount: widget.projectModel.smImages.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: ProjectSmImage(
                      imageUrl: widget.projectModel.smImages[index],
                      isSelected: currentIndex == index,
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: 24),
            Container(
              height: 600,
              width: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage(widget.projectModel.smImages[currentIndex]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
