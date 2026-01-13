import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:web_portfolio/app_colors.dart';
import 'package:web_portfolio/widgets/desktop_appbar.dart';
import 'package:web_portfolio/widgets/mobile_drawer.dart';
import 'package:web_portfolio/sections/hero_section.dart';
import 'package:web_portfolio/sections/about_section.dart';
import 'package:web_portfolio/sections/skill_section.dart';
import 'package:web_portfolio/sections/projects_section.dart';
import 'package:web_portfolio/sections/experience_section.dart';
import 'package:web_portfolio/sections/education_section.dart';
import 'package:web_portfolio/sections/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey educationKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  late final Map<String, GlobalKey> sectionKeys;

  @override
  void initState() {
    super.initState();
    sectionKeys = {
      'hero': heroKey,
      'about': aboutKey,
      'skills': skillsKey,
      'projects': projectsKey,
      'experience': experienceKey,
      'education': educationKey,
      'contact': contactKey,
    };
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 768;

        return Scaffold(
          backgroundColor: AppColors.offWhite,
          appBar: isMobile
              ? AppBar(
                  backgroundColor: AppColors.offWhite,
                  iconTheme: const IconThemeData(color: AppColors.darkGreen),
                  elevation: 1.0,
                  title: const Text(
                    'M. Aziz Rizaldi',
                    style: TextStyle(
                      color: AppColors.darkGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : DesktopAppBar(keys: sectionKeys, onScroll: scrollToSection),
          drawer: isMobile
              ? MobileDrawer(keys: sectionKeys, onScroll: scrollToSection)
              : null,
          body: SingleChildScrollView(
            child: Column(
              children: [
                // UPDATE DI SINI: Menambahkan onContactTap
                HeroSection(
                      key: heroKey,
                      isMobile: isMobile,
                      onContactTap: () => scrollToSection(contactKey),
                    )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                AboutSection(key: aboutKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 200.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                SkillSection(key: skillsKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 400.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                ProjectsSection(key: projectsKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 500.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                ExperienceSection(key: experienceKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 600.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                EducationSection(key: educationKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 800.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                ContactSection(key: contactKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 1000.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),
              ],
            ),
          ),
        );
      },
    );
  }
}
