import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class EducationSection extends StatelessWidget {
  final bool isMobile;
  const EducationSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    // Daftar sertifikasi dari CV
    final sertifikasi = const [
      'Enterprise Systems (University of Minnesota)',
      'Flutter Masterclass (Udemy)',
      'Flutterflow App Development (Udemy)',
      'Seluk Beluk Jaringan Komputer (Google Career)',
      'Dasar Dukungan Teknis (Google Career)',
    ];

    return Container(
      color: AppColors.offWhite,
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
      child: Column(
        children: [
          const Text(
            'Pendidikan & Sertifikasi',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 40,
              runSpacing: 40,
              children: [
                _InfoCard(
                  isMobile: isMobile,
                  title: 'Pendidikan',
                  icon: Icons.school,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'S1 Teknik Informatika',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkGreen,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Universitas Negeri Surabaya',
                        style: TextStyle(fontSize: 16, color: AppColors.darkGreen),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'IPK: 3.86',
                        style: TextStyle(fontSize: 16, color: AppColors.darkGreen),
                      ),
                    ],
                  ),
                ),

                _InfoCard(
                  isMobile: isMobile,
                  title: 'Sertifikasi',
                  icon: Icons.card_membership,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: sertifikasi
                        .map((item) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.check_circle, color: AppColors.mediumGreen, size: 16),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      item, // FIXED: Menghapus interpolasi string yang tidak perlu
                                      style: const TextStyle(color: AppColors.darkGreen),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Widget Bantuan Kartu Info
class _InfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;
  final bool isMobile; 

  const _InfoCard({
    required this.title,
    required this.icon,
    required this.child,
    this.isMobile = false, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile ? double.infinity : 450, 
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.mediumGreen, size: 28),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkGreen,
                ),
              ),
            ],
          ),
          const Divider(height: 30),
          child,
        ],
      ),
    );
  }
}