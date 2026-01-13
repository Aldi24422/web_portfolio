import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class SkillSection extends StatelessWidget {
  final bool isMobile;
  const SkillSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.offWhite,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),

      child: Column(
        children: [
          const Text(
            'Keterampilan',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),

          const SizedBox(height: 50),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: isMobile
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hard Skill',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mediumGreen,
                  ),
                ),

                const SizedBox(height: 20),

                // Baris untuk Hard Skill
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    _HardSkillCard(
                      icon: Icons.smartphone,
                      title: 'Mobile & App Engineering',
                      skills: const [
                        'Flutter & Dart Expert (Cross-platform Android/iOS/Web)',
                        'Native Integration (Dart FFI & C++ Libs)',
                        'Hardware Connectivity (Bluetooth Thermal Printer/ESC POS)',
                        'Advanced UI (Custom Painters & Complex Animations)',
                        'Architecture (Clean Arch, MVVM, Offline-first SQLite)',
                      ],
                    ),
                    _HardSkillCard(
                      icon: Icons.cloud,
                      title: 'Backend & Cloud Infrastructure',
                      skills: const [
                        'Firebase Ecosystem (Firestore NoSQL, Auth, Cloud Functions)',
                        'DevOps & CI/CD (Git Flow & GitHub Actions)',
                        'API Management (RESTful Integration & Postman)',
                        'Database Modeling (SQL & NoSQL Structures)',
                      ],
                    ),
                    _HardSkillCard(
                      icon: Icons.extension,
                      title: 'Web Automation & Scripting',
                      skills: const [
                        'Browser Automation (Chrome Extension Manifest V3)',
                        'Core Web Tech (JavaScript ES6+, HTML5, CSS3, DOM)',
                        'Data Processing (Excel/CSV Parsing & Async Queues)',
                        'Workflow Scripting (Automated Data Entry & Scraping)',
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                const Text(
                  'Soft Skill',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mediumGreen,
                  ),
                ),

                const SizedBox(height: 20),

                // Baris untuk Soft Skill
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    // FIXED: Menghapus 'const' di sini
                    const _SoftSkillCard(
                      icon: Icons.timer,
                      title: 'Manajemen Waktu',
                    ),
                    const _SoftSkillCard(
                      icon: Icons.sync_alt,
                      title: 'Mudah Beradaptasi',
                    ),
                    const _SoftSkillCard(
                      icon: Icons.chat,
                      title: 'Komunikasi Efektif',
                    ),
                    const _SoftSkillCard(
                      icon: Icons.people,
                      title: 'Kerjasama Tim',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// --- WIDGET BANTUAN UNTUK KARTU & HOVER ---

// Widget Pembungkus Animasi Hover
class _HoverCard extends StatefulWidget {
  final Widget child;
  const _HoverCard({required this.child});

  @override
  State<_HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<_HoverCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Menggunakan Matrix4.translationValues (non-deprecated)
    final transform = _isHovered
        ? Matrix4.translationValues(0.0, -10.0, 0.0)
        : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovered
              ? const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ]
              : const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
        ),
        child: widget.child,
      ),
    );
  }
}

// Kartu untuk Hard Skill (dengan daftar)
class _HardSkillCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> skills;

  const _HardSkillCard({
    required this.icon,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return _HoverCard(
      child: Container(
        width: 320,
        constraints: const BoxConstraints(minHeight: 320),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon with background
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.mediumGreen.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: AppColors.mediumGreen, size: 28),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.darkGreen,
              ),
            ),
            const SizedBox(height: 16),
            ...skills.map(
              (skill) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      size: 16,
                      color: AppColors.mediumGreen,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        skill,
                        style: const TextStyle(
                          fontSize: 13,
                          color: AppColors.darkGreen,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Kartu untuk Soft Skill (hanya judul)
class _SoftSkillCard extends StatelessWidget {
  final IconData icon;
  final String title;

  // FIXED: Menghapus 'const' dari constructor
  const _SoftSkillCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return _HoverCard(
      child: Container(
        width: 220,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.darkGreen,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
