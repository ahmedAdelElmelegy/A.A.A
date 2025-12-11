import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/color.dart';
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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController pageController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(pageController: pageController),
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: pageController,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: ColorManager.grey, width: .5),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF4fc3f7).withValues(alpha: 0.05),

                    Color(0xFF0288d1).withValues(alpha: 0.05),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Header(
                    pageController: pageController,
                    onMenuTap: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                  SizedBox(height: 120),
                  HeroSection(),
                  SizedBox(height: 50),
                ],
              ),
            ),

            SizedBox(height: 100),
            AboutSection(),
            SizedBox(height: 100),
            MyWorkProcess(),
            SizedBox(height: 100),
            SkillSection(),
            SizedBox(height: 100),
            MyProjects(),
            SizedBox(height: 100),
            FooterSection(),
            // footer
            // SizedBox(height: 300),
          ],
        ),
      ),
    );
  }
}
