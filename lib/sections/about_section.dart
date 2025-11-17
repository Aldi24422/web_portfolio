import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class AboutSection extends StatelessWidget {
  // BARU: Terima boolean isMobile
  final bool isMobile;
  const AboutSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.beige,
      width: double.infinity,
      // BARU: Padding disesuaikan untuk mobile
      padding: EdgeInsets.symmetric(
        vertical: 60.0,
        horizontal: isMobile ? 20.0 : 40.0,
      ),
      
      child: Column(
        children: [
          // Batasi lebar konten agar mudah dibaca
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              // BARU: Rata kiri untuk semua konten di dalam Column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 3. JUDUL
                const Text(
                  'Tentang Saya',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGreen,
                  ),
                ),
                
                const SizedBox(height: 30),

                // 4. PARAGRAF DESKRIPSI
                const Text(
                  'Lulusan S1 Teknik Informatika yang ahli dalam merancang dan membangun solusi digital end-to-end untuk platform mobile dan web. '
                  'Saya memiliki keahlian dalam mengintegrasikan aplikasi dengan layanan backend yang tangguh serta memanfaatkan platform cloud untuk manajemen data yang aman. '
                  'Pengalaman di bidang dukungan IT dan manajemen sistem memberikan saya pemahaman yang komprehensif mengenai siklus hidup aplikasi, dari pengembangan hingga operasional. '
                  'Saya berkomitmen untuk memecahkan masalah melalui solusi teknologi inovatif yang mendorong efisiensi dan kepuasan pengguna.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.7, // Jarak antar baris
                    color: AppColors.darkGreen,
                  ),
                  // BARU: Hapus textAlign.center, biarkan rata kiri
                ),

                const SizedBox(height: 40),

                // 5. INFORMASI TAMBAHAN
                Wrap(
                  // BARU: Rata kiri
                  alignment: WrapAlignment.start,
                  spacing: 40.0, // Jarak horizontal
                  runSpacing: 20.0, // Jarak vertikal
                  children: [
                    // BARU: Kita buat info chip rata kiri
                    _InfoChip(title: 'Usia', value: '23 Tahun'),
                    _InfoChip(title: 'Status', value: 'Belum Menikah'),
                    _InfoChip(title: 'Hobi', value: 'Menonton Film'),
                    _InfoChip(title: 'Alamat', value: 'Surabaya, Jawa Timur'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// WIDGET BANTUAN untuk info tambahan
class _InfoChip extends StatelessWidget {
  final String title;
  final String value;
  const _InfoChip({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      // BARU: Rata kiri
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.mediumGreen,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.darkGreen,
          ),
        ),
      ],
    );
  }
}