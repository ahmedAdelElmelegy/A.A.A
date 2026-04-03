import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/about_section.dart';
import 'package:portfolio/features/home/presentation/widgets/custom_drawer.dart';
import 'package:portfolio/features/home/presentation/widgets/footer_section.dart';
import 'package:portfolio/features/home/presentation/widgets/header.dart';
import 'package:portfolio/features/home/presentation/widgets/hero_section.dart';
import 'package:portfolio/features/home/presentation/widgets/my_projects.dart';
import 'package:portfolio/features/home/presentation/widgets/my_work_process.dart';
import 'package:portfolio/features/home/presentation/widgets/skill_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController pageController = ScrollController();

  // section keys
  final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey workProcessKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey footerKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<VoidCallback> sectionTaps = [
      () => _scrollToSection(heroKey),
      () => _scrollToSection(aboutKey),
      () => _scrollToSection(workProcessKey),
      () => _scrollToSection(skillsKey),
      () => _scrollToSection(projectsKey),
      () => _scrollToSection(footerKey),
    ];

    return Scaffold(
      drawer: CustomDrawer(
        pageController: pageController,
        onSectionTaps: sectionTaps,
      ),
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // scrollable content
          SingleChildScrollView(
            controller: pageController,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  key: heroKey,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: ColorManager.border.withValues(alpha: 0.5),
                        width: 1,
                      ),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ColorManager.primary.withValues(alpha: 0.05),
                        ColorManager.secondary.withValues(alpha: 0.05),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 100), // header offset
                      SizedBox(height: AppSpacing.space3xl),
                      HeroSection(
                        onViewWorkPressed: () => _scrollToSection(projectsKey),
                      ),
                      SizedBox(height: AppSpacing.xl),
                    ],
                  ),
                ),

                SizedBox(height: AppSpacing.space2xl),
                AboutSection(key: aboutKey),
                SizedBox(height: AppSpacing.space2xl),
                MyWorkProcess(key: workProcessKey),
                SizedBox(height: AppSpacing.space2xl),
                SkillSection(key: skillsKey),
                SizedBox(height: AppSpacing.space2xl),
                MyProjects(key: projectsKey),
                SizedBox(height: AppSpacing.space2xl),
                FooterSection(key: footerKey),
              ],
            ),
          ),

          // sticky header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(
              pageController: pageController,
              onMenuTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
              onSectionTaps: [
                () => _scrollToSection(heroKey),
                () => _scrollToSection(aboutKey),
                () => _scrollToSection(workProcessKey),
                () => _scrollToSection(skillsKey),
                () => _scrollToSection(projectsKey),
                () => _scrollToSection(footerKey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
