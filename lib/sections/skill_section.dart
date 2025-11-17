import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class SkillSection extends StatelessWidget {
  final bool isMobile;
  const SkillSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Latar belakang kembali ke warna krem
      color: AppColors.offWhite,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),

      child: Column(
        children: [
          // JUDUL UTAMA
          const Text(
            'Keterampilan',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),

          const SizedBox(height: 50),

          // Kita batasi lebar totalnya
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ), // Lebar maks 1000px
            child: Column(
              crossAxisAlignment: isMobile
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                // SUB-JUDUL Hard Skill
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
                  spacing: 20, // Jarak horizontal antar kartu
                  runSpacing: 20, // Jarak vertikal antar kartu
                  alignment: WrapAlignment.center,
                  children: [
                    _HardSkillCard(
                      icon: Icons.design_services, // Placeholder ikon
                      title: 'Desain Grafis',
                      skills: ['Figma', 'Lightroom', 'Flutterflow', 'Snapseed'],
                    ),
                    _HardSkillCard(
                      icon: Icons.code, // Placeholder ikon
                      title: 'Pemrograman',
                      skills: ['Dart', 'Python', 'C++', 'PHP', 'HTML & CSS'],
                    ),
                    _HardSkillCard(
                      icon: Icons.data_usage, // Placeholder ikon
                      title: 'Pengolahan Data',
                      skills: ['Ms. Office Word', 'Ms. Excel', 'Firestore'],
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                // SUB-JUDUL Soft Skill
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
                    _SoftSkillCard(icon: Icons.timer, title: 'Manajemen Waktu'),
                    _SoftSkillCard(
                      icon: Icons.sync_alt,
                      title: 'Mudah Beradaptasi',
                    ),
                    _SoftSkillCard(
                      icon: Icons.chat,
                      title: 'Komunikasi Efektif',
                    ),
                    _SoftSkillCard(icon: Icons.people, title: 'Kerjasama Tim'),
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

// --- WIDGET BANTUAN UNTUK KARTU ---
// (Tetap di dalam file skill_section.dart)

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
    return Container(
      width: 280, // Lebar kartu
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.mediumGreen, size: 30),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),
          const SizedBox(height: 12),
          // Ubah daftar String menjadi daftar Widget Text
          ...skills.map(
            (skill) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                '• $skill',
                style: const TextStyle(color: AppColors.darkGreen, height: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Kartu untuk Soft Skill (hanya judul)
class _SoftSkillCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SoftSkillCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220, // Lebar kartu
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        // Desain sedikit berbeda, pakai warna hijau tua
        color: AppColors.darkGreen,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 40), // Ikon putih
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Teks putih
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
