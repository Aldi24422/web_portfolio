// --- GANTI SELURUH FILE INI ---
import 'package:flutter/material.dart';
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

// 1. UBAH JADI STATEFULWIDGET
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 2. BUAT KUNCI UNTUK SETIAP BAGIAN
  final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey educationKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  // 3. BUAT FUNGSI SCROLL
  void scrollToSection(GlobalKey key) {
    // Ambil konteks (lokasi/posisi) dari kunci
    final context = key.currentContext;
    if (context != null) {
      // Perintahkan untuk scroll ke konteks tersebut
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600), // Durasi scroll
        curve: Curves.easeInOut, // Animasi scroll
      );
    }
  }

  // Buat Map (kamus) untuk dikirim ke AppBar/Drawer
  late final Map<String, GlobalKey> sectionKeys;

  @override
  void initState() {
    super.initState();
    // Inisialisasi Map-nya
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
        final bool isMobile = constraints.maxWidth < 768;

        return Scaffold(
          backgroundColor: AppColors.offWhite,
          
          // 4. KIRIM FUNGSI & KUNCI KE APPBAR
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
              : DesktopAppBar(
                  keys: sectionKeys,
                  onScroll: scrollToSection, // Kirim fungsi
                ),

          // 5. KIRIM FUNGSI & KUNCI KE DRAWER
          drawer: isMobile
              ? MobileDrawer(
                  keys: sectionKeys,
                  onScroll: scrollToSection, // Kirim fungsi
                )
              : null,
          
          body: SingleChildScrollView(
            child: Column(
              children: [
                // 6. PASANG KUNCI KE SETIAP BAGIAN
                HeroSection(key: heroKey, isMobile: isMobile),
                AboutSection(key: aboutKey, isMobile: isMobile),
                SkillSection(key: skillsKey, isMobile: isMobile),
                ExperienceSection(key: experienceKey, isMobile: isMobile),
                EducationSection(key: educationKey, isMobile: isMobile),
                ContactSection(key: contactKey, isMobile: isMobile),
              ],
            ),
          ),
        );
      },
    );
  }
}