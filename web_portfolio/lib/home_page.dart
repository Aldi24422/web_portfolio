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
  final ScrollController _scrollController = ScrollController();

  final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey educationKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  late final Map<String, GlobalKey> sectionKeys;
  int _selectedIndex = -1;

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
    _scrollController.addListener(_onScrollLoop);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollLoop);
    _scrollController.dispose();
    super.dispose();
  }

  // --- LOGIKA SCROLL SPY (SUDAH DISESUAIKAN URUTANNYA) ---
  void _onScrollLoop() {
    if (!_scrollController.hasClients) return;

    final double maxScroll = _scrollController.position.maxScrollExtent;
    final double currentScroll = _scrollController.position.pixels;

    // Cek Mentok Bawah (Kontak)
    if (maxScroll - currentScroll <= 50) {
      if (_selectedIndex != 5) setState(() => _selectedIndex = 5);
      return;
    }

    // 👇👇 URUTAN KUNCI DI SINI JUGA HARUS DIUBAH 👇👇
    final List<GlobalKey> menuKeys = [
      aboutKey, // 0: Tentang Saya
      educationKey, // 1: Pendidikan (PINDAH KE SINI)
      skillsKey, // 2: Keterampilan
      projectsKey, // 3: Karya
      experienceKey, // 4: Pengalaman
      contactKey, // 5: Kontak
    ];

    for (int i = 0; i < menuKeys.length; i++) {
      final key = menuKeys[i];
      final RenderBox? renderBox =
          key.currentContext?.findRenderObject() as RenderBox?;

      if (renderBox != null) {
        final offset = renderBox.localToGlobal(Offset.zero).dy;
        if (offset >= -200 && offset < 400) {
          if (_selectedIndex != i) setState(() => _selectedIndex = i);
          return;
        }
      }
    }

    if (currentScroll < 100) {
      if (_selectedIndex != -1) setState(() => _selectedIndex = -1);
    }
  }

  // --- KLIK MENU (SUDAH DISESUAIKAN URUTANNYA) ---
  void _scrollToIndex(int index) {
    // 👇👇 URUTAN DI SINI JUGA SAMA 👇👇
    final List<GlobalKey> menuKeys = [
      aboutKey,
      educationKey, // Pindah ke sini
      skillsKey,
      projectsKey,
      experienceKey,
      contactKey,
    ];
    scrollToSection(menuKeys[index]);
  }

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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 1000;

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
              : DesktopAppBar(
                  selectedIndex: _selectedIndex,
                  onMenuTap: _scrollToIndex,
                ),
          drawer: isMobile
              ? MobileDrawer(keys: sectionKeys, onScroll: scrollToSection)
              : null,
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HeroSection(
                      key: heroKey,
                      isMobile: isMobile,
                      onContactTap: () => scrollToSection(contactKey),
                    )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 1. TENTANG SAYA
                AboutSection(key: aboutKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 200.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 2. PENDIDIKAN (DIPINDAHKAN KE SINI) ✅
                EducationSection(key: educationKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 400.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 3. KETERAMPILAN (GESER KE BAWAH)
                SkillSection(key: skillsKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 500.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 4. KARYA
                ProjectsSection(key: projectsKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 600.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 5. PENGALAMAN
                ExperienceSection(key: experienceKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 700.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),

                // 6. KONTAK
                ContactSection(key: contactKey, isMobile: isMobile)
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 800.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOut),
              ],
            ),
          ),
        );
      },
    );
  }
}
