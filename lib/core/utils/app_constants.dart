import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/constants.dart';
import 'package:portfolio/features/home/data/model/my_work_process_model.dart';
import 'package:portfolio/features/home/data/model/project_model.dart';

class AppConstants {
  // =======================
  // My Work Process
  // =======================
  static List<MyWorkProcessModel> myWorkProcessList = [
    MyWorkProcessModel(
      title: 'Research & Requirement Analysis',
      description:
          'Understanding user needs, defining project scope, and planning app features and data flow.',
      icon: Icons.search,
    ),
    MyWorkProcessModel(
      title: 'UI/UX Design',
      description:
          'Designing wireframes, UI components, color systems, and typography using Figma.',
      icon: Icons.design_services,
    ),
    MyWorkProcessModel(
      title: 'Project Architecture',
      description:
          'Setting up clean architecture, MVVM pattern, dependency injection, and scalable folder structure.',
      icon: Icons.architecture,
    ),
    MyWorkProcessModel(
      title: 'API Integration & Data Handling',
      description:
          'Integrating REST APIs, building data models, handling pagination, caching, and network errors.',
      icon: Icons.api,
    ),
    MyWorkProcessModel(
      title: 'Feature Development',
      description:
          'Implementing features, state management, animations, and responsive UI across devices.',
      icon: Icons.extension,
    ),
    MyWorkProcessModel(
      title: 'Testing & Optimization',
      description:
          'Testing UI and APIs, handling edge cases, optimizing performance, and preparing for release.',
      icon: Icons.bug_report,
    ),
  ];

  // =======================
  // Projects
  // =======================
  static List<ProjectModel> projectList = [
    ProjectModel(
      projectName: 'Circle',
      projectDescription:
          'A modern e-commerce application that enables users to browse products, manage carts, track orders, and complete secure payments.',
      projectImage: AppImages.project1,
      technologies: [
        'Flutter',
        'Dart',
        'MVVM Architecture',
        'Provider',
        'Get It (DI)',
        'REST APIs (Dio)',
        'Google Maps',
        'Payment Integration',
        'Multi-Language Support',
      ],
      smImages: [
        AppImages.smImageProject11,
        AppImages.smImageProject12,
        AppImages.smImageProject13,
        AppImages.smImageProject14,
        AppImages.smImageProject15,
        AppImages.smImageProject16,
        AppImages.smImageProject17,
        AppImages.smImageProject18,
        AppImages.smImageProject19,
        AppImages.smImageProject20,
        AppImages.smImageProject21,
        AppImages.smImageProject22,
        AppImages.smImageProject23,
        AppImages.smImageProject24,
        AppImages.smImageProject25,
        AppImages.smImageProject26,
        AppImages.smImageProject27,
        AppImages.smImageProject28,
        // to 28
      ],
      features: [
        'Product listing & categories',
        'Shopping cart management',
        'Order tracking',
        'Payment processing',
        'User authentication & profile',
        'Location tracking',
        'Multi-language support',
        'Clean architecture & scalable code',
      ],
    ),

    ProjectModel(
      projectName: 'Nurse Bot',
      projectDescription:
          'An AI-powered application that summarizes books and answers user questions using an intelligent chatbot.',
      projectImage: AppImages.project2,
      technologies: [
        'Flutter',
        'Dart',
        'Gemini API',
        'Provider',
        'AI Chat Assistant',
        'Book Summarization',
        'URL Launcher',
      ],
      features: [
        "Chatbot for Q&A",
        'AI-powered book summarization',
        'Interactive chatbot for Q&A',
        'User-friendly interface',
        "book links",
        "qoutes",
        'Offline reading support',
        'Clean & responsive UI',
      ],
      smImages: [
        // 321 to 36
        AppImages.smImageProject31,
        AppImages.smImageProject32,
        AppImages.smImageProject33,
        AppImages.smImageProject34,
        AppImages.smImageProject35,
        AppImages.smImageProject36,
      ],
    ),

    ProjectModel(
      projectName: 'El Huda',
      projectDescription:
          'An Islamic guidance application providing accurate prayer times, Quran access, reminders, and location-based services.',
      projectImage: AppImages.project3,
      technologies: [
        'Flutter',
        'Dart',
        'MVVM Architecture',
        'Cubit / Bloc',
        'Get It (DI)',
        'REST APIs (Dio)',
        'Prayer Times',
        'Quran Reader',
        'Push Notifications',
        'Google Maps',
        'Multi-Language Support',
      ],
      features: [
        'Accurate prayer times & alerts',
        'Quran reading & audio playback',
        'Adjustable Quran font size',
        'Quran reader with bookmarks',
        'Doaa & supplications',
        'Azkar for morning & evening with notifications',
        'Digital Sebha (tasbeeh counter)',
        'Asmaa Allah al-Husna (99 Names) display',
        'Mosque location tracking',
        'Smart reminders & notifications',
        'Multi-language support',
        'Clean & modern UI',
        'Offline access for Quran & prayers',
      ],
      smImages: [
        AppImages.smImageProjectQ21,
        AppImages.smImageProjectQ22,
        AppImages.smImageProjectQ23,
        AppImages.smImageProjectQ24,
        AppImages.smImageProjectQ25,
        AppImages.smImageProjectQ26,
        AppImages.smImageProjectQ27,
        AppImages.smImageProjectQ28,
        AppImages.smImageProjectQ29,
        AppImages.smImageProjectQ30,
        AppImages.smImageProjectQ31,
        AppImages.smImageProjectQ32,
        AppImages.smImageProjectQ33,
        AppImages.smImageProjectQ34,
        AppImages.smImageProjectQ35,
        AppImages.smImageProjectQ36,
        AppImages.smImageProjectQ37,
        AppImages.smImageProjectQ38,
        AppImages.smImageProjectQ39,
        AppImages.smImageProjectQ40,
        AppImages.smImageProjectQ41,
        AppImages.smImageProjectQ42,
        AppImages.smImageProjectQ43,
      ],
    ),

    ProjectModel(
      projectName: 'BMI Calculator',
      projectDescription:
          'A lightweight BMI calculator app that calculates body mass index based on user input with a clean UI.',
      projectImage: AppImages.project4,
      technologies: [
        'Flutter',
        'Dart',
        'MVVM Architecture',
        'Cubit / Bloc',
        'Responsive UI',
      ],
      features: [
        'Real-time BMI calculation',
        'User-friendly interface',
        'Responsive design for mobile & tablet',
        'Health tips & category guidance',
        'MVVM Architecture & maintainable code',
      ],
      smImages: [AppImages.smImageProject41, AppImages.smImageProject42],
    ),
  ];
}
