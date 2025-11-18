import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart'; // Import animasi
import 'package:web_portfolio/app_colors.dart';
import 'package:web_portfolio/widgets/desktop_appbar.dart';
import 'package:web_portfolio/widgets/mobile_drawer.dart';
// Import semua sections
import 'package:web_portfolio/sections/hero_section.dart';
import 'package:web_portfolio/sections/about_section.dart';
import 'package:web_portfolio/sections/skill_section.dart';
import 'package:web_portfolio/sections/experience_section.dart';
import 'package:web_portfolio/sections/education_section.dart';
import 'package:web_portfolio/sections/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 1. Membuat Kunci (Key) untuk setiap bagian agar bisa di-scroll
  final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey educationKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  // 2. Fungsi untuk melakukan scroll ke bagian tertentu
  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800), // Durasi scroll
        curve: Curves.easeInOutCubic, // Animasi scroll yang halus
      );
    }
  }

  late final Map<String, GlobalKey> sectionKeys;

  @override
  void initState() {
    super.initState();
    // Mendaftarkan kunci ke dalam Map agar mudah dikirim ke AppBar/Drawer
    sectionKeys = {
      'hero': heroKey,
      'about': aboutKey,
      'skills': skillsKey,
      'experience': experienceKey,
      'education': educationKey,
      'contact': contactKey,
    };
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Tentukan breakpoint (batas lebar) untuk mobile vs desktop
        final bool isMobile = constraints.maxWidth < 768;

        return Scaffold(
          backgroundColor: AppColors.offWhite,
          
          // --- APP BAR (Navigasi Atas) ---
          appBar: isMobile
              ? AppBar( // Tampilan Mobile
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
              : DesktopAppBar( // Tampilan Desktop (Custom Widget)
                  keys: sectionKeys,
                  onScroll: scrollToSection,
                ),

          // --- DRAWER (Menu Samping untuk Mobile) ---
          drawer: isMobile
              ? MobileDrawer(
                  keys: sectionKeys,
                  onScroll: scrollToSection,
                )
              : null,
          
          // --- BODY (Konten Utama) ---
          body: SingleChildScrollView(
            child: Column(
              children: [
                // 1. Hero Section (Muncul Pertama)
                HeroSection(key: heroKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 2. About Section (Delay 200ms)
                AboutSection(key: aboutKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 200.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 3. Skill Section (Delay 400ms)
                SkillSection(key: skillsKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 400.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 4. Experience Section (Delay 600ms)
                ExperienceSection(key: experienceKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 600.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 5. Education Section (Delay 800ms)
                EducationSection(key: educationKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 800.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 6. Contact Section (Delay 1 detik)
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