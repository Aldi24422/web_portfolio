import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class ContactSection extends StatelessWidget {
  // 1. Menerima isMobile
  final bool isMobile;
  const ContactSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.darkGreen, // Latar belakang hijau tua
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
      child: Column(
        children: [
          const Text(
            'Kontak Saya',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Teks putih
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Jangan ragu untuk menghubungi saya!',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.beige, // Teks beige
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          // Baris tombol kontak
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20, // Jarak horizontal
            runSpacing: 20, // Jarak vertikal
            children: [
              _ContactButton(
                icon: Icons.email,
                text: 'azizrizaldi18@gmail.com',
                onPressed: () {},
              ),
              _ContactButton(
                icon: Icons.phone,
                text: '+62 812-5280-1386',
                onPressed: () {},
              ),
              _ContactButton(
                icon: Icons.link, // Placeholder untuk LinkedIn
                text: 'LinkedIn',
                onPressed: () {},
              ),
              _ContactButton(
                icon: Icons.camera_alt, // Placeholder untuk Instagram
                text: 'azizrizaldi_',
                onPressed: () {},
              ),
            ],
          ),

          const SizedBox(height: 60),
          const Text(
            'Dibuat dengan Flutter',
            style: TextStyle(color: AppColors.mediumGreen),
          ),
        ],
      ),
    );
  }
}

// Widget Bantuan Tombol Kontak (di file yang sama)
class _ContactButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const _ContactButton({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: Icon(icon, color: AppColors.offWhite),
      label: Text(text, style: const TextStyle(color: AppColors.offWhite)),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        side: const BorderSide(color: AppColors.mediumGreen),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
