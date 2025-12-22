import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/custom_container.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';
import 'package:portfolio/features/project/presentation/view/widgets/project_sm_image.dart';

class ProjectImageTabletAndMobile extends StatefulWidget {
  final ProjectModel projectModel;

  const ProjectImageTabletAndMobile({super.key, required this.projectModel});

  @override
  State<ProjectImageTabletAndMobile> createState() =>
      _ProjectImageTabletAndMobileState();
}

class _ProjectImageTabletAndMobileState
    extends State<ProjectImageTabletAndMobile> {
  int currentIndex = 0;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage(widget.projectModel.smImages[currentIndex]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 24),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              itemCount: widget.projectModel.smImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ProjectSmImage(
                      imageUrl: widget.projectModel.smImages[index],
                      isSelected: currentIndex == index,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
