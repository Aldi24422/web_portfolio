import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_portfolio/app_colors.dart';
import 'package:web_portfolio/utils/url_service.dart';

class ContactSection extends StatelessWidget {
  final bool isMobile;
  const ContactSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.darkGreen,
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
      child: Column(
        children: [
          const Text(
            'Kontak Saya',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Jangan ragu untuk menghubungi saya!',
            style: TextStyle(fontSize: 16, color: AppColors.beige),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 15, // Jarak antar tombol horizontal
            runSpacing: 15, // Jarak antar tombol vertikal
            children: [
              _ContactButton(
                icon: const Icon(Icons.email, size: 20),
                text: emailAddress, // Diambil dari url_service.dart
                onPressed: launchEmail,
              ),
              _ContactButton(
                icon: const Icon(Icons.phone, size: 20),
                text: phoneNumber, // Diambil dari url_service.dart
                onPressed: launchPhone,
              ),
              _ContactButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin, size: 20),
                text: 'LinkedIn',
                onPressed: () => launchUrlService(linkedInUrl),
              ),
              _ContactButton(
                icon: const FaIcon(FontAwesomeIcons.instagram, size: 20),
                text: 'azizrizaldi_',
                onPressed: () => launchUrlService(instagramUrl),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  final Widget icon;
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
      icon: icon,
      label: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
      onPressed: onPressed,
      style: ButtonStyle(
        // Padding tombol
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        ),
        // Warna teks dan icon (Default & Hover)
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.white; // Putih saat hover
          }
          return AppColors.offWhite; // Off-white saat normal
        }),
        // Warna Background saat Hover
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.mediumGreen.withOpacity(0.3);
          }
          return Colors.transparent;
        }),
        // Border / Garis Tepi saat Hover
        side: WidgetStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(WidgetState.hovered)) {
            return const BorderSide(color: AppColors.beige, width: 2);
          }
          return const BorderSide(color: AppColors.mediumGreen, width: 1);
        }),
        // Bentuk Tombol (Rounded)
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        // Mouse Cursor
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
      ),
    );
  }
}
