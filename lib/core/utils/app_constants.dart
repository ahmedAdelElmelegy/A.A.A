import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/constants.dart';
import 'package:portfolio/features/home/data/model/my_work_process_model.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';

class AppConstants {
  static List<MyWorkProcessModel> myWorkProcessList = [
    MyWorkProcessModel(
      title: 'Research & Requirement Analysis',
      description:
          'I start by identifying user needs, defining the feature scope, and planning the data flow and API requirements.',
      icon: Icons.search,
    ),
    MyWorkProcessModel(
      title: 'UI/UX & Component Design',
      description:
          'I use Figma to create wireframes, components, color systems, and typography to ensure a smooth user experience.',
      icon: Icons.color_lens,
    ),
    MyWorkProcessModel(
      title: 'Project Architecture Setup',
      description:
          'I build models, repositories, services, and handle authentication, pagination, caching, and network errors.',
      icon: Icons.home,
    ),
    MyWorkProcessModel(
      title: 'API Integration & Data Modeling',
      description:
          'I build models, repositories, services, and handle authentication, pagination, caching, and network errors.',
      icon: Icons.link,
    ),
    MyWorkProcessModel(
      title: 'Feature Development & State Management',
      description:
          'I manage loading, error, UI states, animations, controllers, and ensure the code is responsive and clean.',
      icon: Icons.category,
    ),

    MyWorkProcessModel(
      title: 'Testing, Optimization & Delivery',
      description:
          'I test APIs, UI behavior, edge cases, and optimize rebuilds, caching, and performance before release.',
      icon: Icons.error,
    ),
  ];

  static List<ProjectModel> projectList = [
    ProjectModel(
      projectName: 'Circle',
      projectDescription:
          'A modern e-commerce application that allows users to browse products, manage their cart',
      projectImage: AppImages.project1,
    ),
    ProjectModel(
      projectName: 'Nurse Bot',
      projectDescription:
          'An AI-powered app that summarizes books, answers questions via an AI assistant',
      projectImage: AppImages.project2,
    ),
  ];
}
