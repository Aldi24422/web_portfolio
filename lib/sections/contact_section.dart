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
          const SizedBox(height: 30),
          const Text(
            'Jangan ragu untuk menghubungi saya!',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.beige,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              _ContactButton(
                icon: const Icon(Icons.email, color: AppColors.offWhite, size: 20),
                text: emailAddress,
                onPressed: launchEmail,
              ),
              _ContactButton(
                icon: const Icon(Icons.phone, color: AppColors.offWhite, size: 20),
                text: phoneNumber,
                onPressed: launchPhone,
              ),
              _ContactButton(
                // Menggunakan FaIcon untuk LinkedIn
                icon: const FaIcon(FontAwesomeIcons.linkedin, color: AppColors.offWhite, size: 20),
                text: 'LinkedIn',
                onPressed: () => launchUrlService(linkedInUrl),
              ),
              _ContactButton(
                // Menggunakan FaIcon untuk Instagram
                icon: const FaIcon(FontAwesomeIcons.instagram, color: AppColors.offWhite, size: 20),
                text: 'azizrizaldi_',
                onPressed: () => launchUrlService(instagramUrl),
              ),
            ],
          ),
          // Bagian teks "Dibuat dengan Flutter" sudah dihapus
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
      label: Text(text, style: const TextStyle(color: AppColors.offWhite)),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        side: const BorderSide(color: AppColors.mediumGreen),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}