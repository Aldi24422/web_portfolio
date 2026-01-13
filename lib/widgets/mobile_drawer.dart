// --- GANTI SELURUH FILE INI ---
import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class MobileDrawer extends StatelessWidget {
  // 1. TERIMA FUNGSI DAN MAP KUNCI
  final Function(GlobalKey) onScroll;
  final Map<String, GlobalKey> keys;

  const MobileDrawer({super.key, required this.onScroll, required this.keys});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.offWhite,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: AppColors.darkGreen),
            child: TextButton(
              // Tombol header untuk scroll ke atas
              onPressed: () {
                Navigator.of(context).pop(); // Tutup drawer
                onScroll(keys['hero']!); // Scroll ke atas
              },
              child: const Text(
                'M. Aziz Rizaldi',
                style: TextStyle(color: Colors.white, fontSize: 24),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          // 2. HUBUNGKAN TOMBOL KE FUNGSI SCROLL
          _DrawerTile(
            text: 'Tentang Saya',
            icon: Icons.person,
            onTap: () => onScroll(keys['about']!),
          ),
          _DrawerTile(
            text: 'Keterampilan',
            icon: Icons.construction,
            onTap: () => onScroll(keys['skills']!),
          ),
          _DrawerTile(
            text: 'Karya',
            icon: Icons.work_outline,
            onTap: () => onScroll(keys['projects']!),
          ),
          _DrawerTile(
            text: 'Pengalaman',
            icon: Icons.work,
            onTap: () => onScroll(keys['experience']!),
          ),
          _DrawerTile(
            text: 'Pendidikan',
            icon: Icons.school,
            onTap: () => onScroll(keys['education']!),
          ),
          _DrawerTile(
            text: 'Kontak',
            icon: Icons.mail,
            onTap: () => onScroll(keys['contact']!),
          ),
        ],
      ),
    );
  }
}

// Widget Bantuan ListTile di Drawer
class _DrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const _DrawerTile({
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.darkGreen),
      title: Text(text, style: const TextStyle(color: AppColors.darkGreen)),
      onTap: () {
        // Logika untuk menutup drawer SETELAH diklik
        Navigator.of(context).pop();
        // Jalankan fungsi scroll
        onTap();
      },
    );
  }
}
