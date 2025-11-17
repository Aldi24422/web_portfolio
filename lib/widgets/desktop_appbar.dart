// --- GANTI SELURUH FILE INI ---
import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  // 1. TERIMA FUNGSI DAN MAP KUNCI
  final Function(GlobalKey) onScroll;
  final Map<String, GlobalKey> keys;

  const DesktopAppBar({super.key, required this.onScroll, required this.keys});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.offWhite,
      elevation: 1.0,
      title: TextButton(
        // Tombol judul untuk scroll ke atas
        onPressed: () => onScroll(keys['hero']!),
        child: const Text(
          'M. Aziz Rizaldi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.darkGreen,
            fontSize: 20, // Perbesar sedikit
          ),
        ),
      ),
      actions: [
        // 2. HUBUNGKAN TOMBOL KE FUNGSI SCROLL
        _AppBarButton(
          text: 'Tentang Saya',
          onPressed: () => onScroll(keys['about']!),
        ),
        _AppBarButton(
          text: 'Keterampilan',
          onPressed: () => onScroll(keys['skills']!),
        ),
        _AppBarButton(
          text: 'Pengalaman',
          onPressed: () => onScroll(keys['experience']!),
        ),
        _AppBarButton(
          text: 'Pendidikan',
          onPressed: () => onScroll(keys['education']!),
        ),
        _AppBarButton(
          text: 'Kontak',
          onPressed: () => onScroll(keys['contact']!),
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// Widget Bantuan Tombol di AppBar
class _AppBarButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _AppBarButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.black, // Efek hover
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.darkGreen,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
