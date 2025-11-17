import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class HeroSection extends StatelessWidget {
  // Menerima boolean isMobile
  final bool isMobile;
  const HeroSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Atur tinggi berdasarkan layar
      height: isMobile ? 400 : 600,
      width: double.infinity,
      color: AppColors.offWhite,
      alignment: Alignment.center,
      // Beri padding horizontal di mobile agar teks tidak menempel
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20.0 : 0),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. NAMA ANDA
          Text(
            'M. Aziz Rizaldi',
            style: TextStyle(
              // Ukuran font mengecil di mobile
              fontSize: isMobile ? 32 : 44,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
            textAlign: TextAlign.center, // Rata tengah
          ),

          const SizedBox(height: 16),

          // 2. JABATAN/DESKRIPSI SINGKAT
          Text(
            'Application Developer & IT Support',
            style: TextStyle(
              // Ukuran font mengecil di mobile
              fontSize: isMobile ? 18 : 22,
              color: AppColors.darkGreen,
            ),
            textAlign: TextAlign.center, // Rata tengah
          ),

          const SizedBox(height: 32),

          // 3. LOGIKA TOMBOL (Row atau Column)
          // Menggunakan widget _HoverButton yang baru
          isMobile
              ? Column(
                  // Tampilan Mobile: Tombol tersusun ke bawah
                  children: const [
                    _HoverButton(
                      text: 'Lihat Proyek Saya',
                      isPrimary: true,
                      isMobile: true,
                    ),
                    SizedBox(height: 16),
                    _HoverButton(
                      text: 'Hubungi Saya',
                      isPrimary: false,
                      isMobile: true,
                    ),
                  ],
                )
              : Row(
                  // Tampilan Desktop: Tombol bersebelahan
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    _HoverButton(text: 'Lihat Proyek Saya', isPrimary: true),
                    SizedBox(width: 20),
                    _HoverButton(text: 'Hubungi Saya', isPrimary: false),
                  ],
                ),
        ],
      ),
    );
  }
}

// --- WIDGET BARU UNTUK TOMBOL DENGAN ANIMASI HOVER ---

class _HoverButton extends StatefulWidget {
  final String text;
  final bool isPrimary;
  final bool isMobile;

  const _HoverButton({
    required this.text,
    required this.isPrimary,
    this.isMobile = false,
  });

  @override
  State<_HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<_HoverButton> {
  // 1. Variabel untuk melacak status hover
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // 2. Ambil properti dari widget
    final double minWidth = widget.isMobile ? double.infinity : 200;
    final primaryColor = widget.isPrimary
        ? AppColors.mediumGreen
        : AppColors.mediumGreen;
    final onPrimaryColor = widget.isPrimary
        ? Colors.white
        : AppColors.mediumGreen;
    final backgroundColor = widget.isPrimary
        ? AppColors.mediumGreen
        : AppColors.offWhite;

    // 3. Tentukan style berdasarkan status hover
    // Jika di-hover, angkat sedikit dan beri bayangan. Jika tidak, kembali normal.
    final transform = _isHovered
        ? (Matrix4.identity()..translate(0, -5, 0))
        : Matrix4.identity();
    final boxShadow = _isHovered
        ? [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ]
        : <BoxShadow>[];

    // 4. MouseRegion adalah widget yang mendeteksi kursor mouse
    return MouseRegion(
      cursor: SystemMouseCursors.click, // Ubah kursor jadi tangan
      onEnter: (_) => setState(() => _isHovered = true), // Saat kursor masuk
      onExit: (_) => setState(() => _isHovered = false), // Saat kursor keluar
      // 5. AnimatedContainer akan menganimasikan perubahan (bayangan & posisi angkat)
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200), // Durasi animasi
        transform: transform,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            4,
          ), // Sesuaikan dengan style tombol
          boxShadow: boxShadow,
        ),
        child: widget.isPrimary
            ? ElevatedButton(
                onPressed: () {}, // Aksi akan kita tambahkan nanti
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  foregroundColor: onPrimaryColor,
                  minimumSize: Size(minWidth, 55),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 20,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: Text(widget.text),
              )
            : OutlinedButton(
                onPressed: () {}, // Aksi akan kita tambahkan nanti
                style: OutlinedButton.styleFrom(
                  backgroundColor:
                      backgroundColor, // Background agar bayangan terlihat
                  side: BorderSide(color: primaryColor, width: 2),
                  foregroundColor: onPrimaryColor,
                  minimumSize: Size(minWidth, 55),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 20,
                  ),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: Text(widget.text),
              ),
      ),
    );
  }
}
