import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart'; // Pastikan path ini sesuai dengan projectmu

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  // 1. TERIMA DATA BARU
  // selectedIndex: Menu nomor berapa yang sedang aktif/nyala?
  final int selectedIndex;
  // onMenuTap: Fungsi ketika tombol diklik (mengirim nomor urut)
  final Function(int) onMenuTap;

  const DesktopAppBar({
    super.key,
    required this.selectedIndex,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    // 2. DAFTAR MENU (Sesuaikan urutan dengan Homepage nanti)
    final List<String> menuItems = [
      'Tentang Saya',
      'Pendidikan',
      'Keterampilan',
      'Karya',
      'Pengalaman',
      'Kontak',
    ];

    return AppBar(
      backgroundColor: AppColors.offWhite,
      elevation: 0, // Kita buat flat (tanpa bayangan) agar lebih bersih
      titleSpacing: 40, // Jarak dari kiri
      // LOGO / NAMA DI KIRI
      title: const Text(
        'M. Aziz Rizaldi',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: AppColors.darkGreen,
          fontSize: 24,
        ),
      ),

      // TOMBOL MENU DI KANAN
      actions: [
        // Kita pakai Row di dalam Actions untuk menyusun tombol
        Row(
          children: List.generate(menuItems.length, (index) {
            // Cek: Apakah tombol ini yang sedang aktif?
            bool isActive = selectedIndex == index;

            return Padding(
              padding: const EdgeInsets.only(right: 10), // Jarak antar tombol
              child: InkWell(
                onTap: () => onMenuTap(index), // Kirim nomor index ke HomePage
                borderRadius: BorderRadius.circular(20), // Efek klik membulat
                hoverColor: const Color.fromARGB(
                  41,
                  0,
                  0,
                  0,
                ), // Hilangkan warna hover bawaan
                // 3. DESAIN KAPSUL (PILL STYLE)
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    // Warna background: Kalau aktif abu-abu tipis, kalau tidak transparan
                    color: isActive
                        ? Colors.black.withOpacity(0.05)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(
                      20,
                    ), // Membuat lengkungan kapsul
                  ),
                  child: Text(
                    menuItems[index],
                    style: TextStyle(
                      fontSize: 16,
                      // Warna teks selalu hijau
                      color: AppColors.darkGreen,
                      // Kalau aktif teksnya jadi Bold
                      fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        const SizedBox(width: 30), // Jarak margin kanan
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60); // Tinggi Navbar
}
