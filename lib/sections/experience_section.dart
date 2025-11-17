import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class ExperienceSection extends StatelessWidget {
  // 1. Menerima isMobile
  final bool isMobile;
  const ExperienceSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    // 1. DefaultTabController adalah widget yang mengelola
    //    semua logika TabBar (mengatur tab mana yang aktif)
    return DefaultTabController(
      length: 3, // Kita punya 3 tab
      child: Container(
        color: AppColors.beige, // Latar belakang beige
        // 2. Padding dibuat responsif
        padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: isMobile ? 20.0 : 40.0),
        child: Column(
          children: [
            // JUDUL UTAMA
            const Text(
              'Pengalaman',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.darkGreen,
              ),
            ),
            const SizedBox(height: 30),

            // 3. TabBar dibuat scrollable (dan const dihapus)
            TabBar(
              isScrollable: isMobile,
              labelColor: AppColors.darkGreen, // Warna teks tab aktif
              unselectedLabelColor: Colors.grey, // Warna teks tab non-aktif
              indicatorColor: AppColors.mediumGreen, // Warna garis bawah
              indicatorWeight: 3.0,
              tabs: const [
                Tab(child: Text('Pengalaman Kerja', style: TextStyle(fontWeight: FontWeight.bold))),
                Tab(child: Text('Pengalaman Proyek', style: TextStyle(fontWeight: FontWeight.bold))),
                Tab(child: Text('Profesional', style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            
            const SizedBox(height: 30),

            // 4. Konten dari setiap tab
            Container(
              // 5. Tinggi TabView dibuat responsif
              height: isMobile ? 550 : 500,
              constraints: const BoxConstraints(maxWidth: 800), // Batasi lebar
              // 6. const dihapus dan isMobile dikirim ke Tabs
              child: TabBarView(
                children: [
                  _WorkTab(isMobile: isMobile),
                  _ProjectTab(isMobile: isMobile),
                  _ProfessionalTab(isMobile: isMobile),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --- WIDGET KONTEN UNTUK SETIAP TAB ---

// --- KONTEN TAB 1: PENGALAMAN KERJA ---
class _WorkTab extends StatelessWidget {
  // 7. Menerima & mengirim isMobile
  final bool isMobile;
  const _WorkTab({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Application Developer (MSIB)',
          subtitle: 'Disdukcapil Surabaya',
          date: 'Agustus 2024 - Januari 2025',
          details: [
            'Mengintegrasikan WhatsApp API ke dalam aplikasi web pengaduan publik.',
            'Mendesain ulang total UI aplikasi menjadi lebih modern dan intuitif.',
            'Mengoptimalkan algoritma backend untuk balasan otomatis yang lebih cepat.',
            'Menjalankan siklus pengembangan penuh (analisis, perancangan, dan pengujian).'
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Application Developer & IT Support (Magang)',
          subtitle: 'PT Sucofindo',
          date: 'Januari - April 2024',
          details: [
            'Mengembangkan aplikasi berbasis web (progressive) : Asset Maintenance.',
            'Installing Ms Office, installing, reinstalling, dan updating windows.',
            'Setup perangkat PC dan laptop baru.',
            'Maintenance backup Windows SQL Server.',
          ],
        ),
      ],
    );
  }
}

// --- KONTEN TAB 2: PENGALAMAN PROYEK ---
class _ProjectTab extends StatelessWidget {
  // 8. Menerima & mengirim isMobile
  final bool isMobile;
  const _ProjectTab({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Aplikasi Asset Monitoring pada PT Sucofindo',
          subtitle: 'Peran: Low Code Developer',
          date: 'Januari - April 2024',
          details: [
            'Mengembangkan aplikasi berbasis web (progressive web) menggunakan Flutterflow dengan integrasi back-end Firebase.'
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Aplikasi Stok Barang pada CV. Aldi Printing',
          subtitle: 'Peran: Low Code Developer',
          date: 'November 2023',
          details: [
            'Mengembangkan aplikasi berbasis web menggunakan Flutterflow dengan integrasi back-end Firebase.'
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Aplikasi Janji Temu Dosen dan Mahasiswa',
          subtitle: 'Peran: Analis Sistem',
          date: 'Oktober - Desember 2023',
          details: [
            'Menganalisis kebutuhan bisnis dan fungsional.',
            'Merancang dan mengelola basis data yang diperlukan untuk aplikasi.',
          ],
        ),
      ],
    );
  }
}

// --- KONTEN TAB 3: PROFESIONAL ---
class _ProfessionalTab extends StatelessWidget {
  // 9. Menerima & mengirim isMobile
  final bool isMobile;
  const _ProfessionalTab({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Tim PORPROV IX Jatim',
          subtitle: 'Peran: Tim Panitia Pelaksana Cabor Kurash bidang IT',
          date: 'Juni 2025',
          details: [],
        ),
         _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Tim PORPROV VIII Jatim',
          subtitle: 'Peran: Atlet Cabor Kurash Kota Surabaya',
          date: 'September 2023',
          details: [],
        ),
        _ExperienceCard(
          isMobile: isMobile, // Kirim ke kartu
          title: 'Tim PORPROV VII Jatim',
          subtitle: 'Peran: Atlet Cabor Woodball Kota Surabaya',
          date: 'Juni 2022',
          details: [],
        ),
      ],
    );
  }
}


// --- WIDGET KARTU BANTUAN YANG DIPAKAI ULANG ---
class _ExperienceCard extends StatelessWidget {
  // 10. Menerima isMobile
  final bool isMobile;
  final String title;
  final String subtitle;
  final String date;
  final List<String> details;

  const _ExperienceCard({
    this.isMobile = false, // Default ke false
    required this.title,
    required this.subtitle,
    required this.date,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20), // Jarak antar kartu
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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
          // 11. Logika responsif untuk Judul/Tanggal
          isMobile
              ? Column( // Tampilan Mobile: Kolom
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _TitleBlock(title: title, subtitle: subtitle),
                    const SizedBox(height: 12),
                    _DateBlock(date: date),
                  ],
                )
              : Row( // Tampilan Desktop: Baris
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: _TitleBlock(title: title, subtitle: subtitle)),
                    const SizedBox(width: 20),
                    _DateBlock(date: date),
                  ],
                ),
          
          const Divider(height: 30),

          // Detail Poin-poin
          ...details.map((detail) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('• ', style: TextStyle(color: AppColors.darkGreen)),
                    Expanded(
                      child: Text(
                        detail,
                        style: const TextStyle(color: AppColors.darkGreen, height: 1.5),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

// --- WIDGET BANTUAN BARU ---

// Widget bantuan untuk Judul & Subjudul
class _TitleBlock extends StatelessWidget {
  final String title;
  final String subtitle;
  const _TitleBlock({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.darkGreen,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.mediumGreen,
          ),
        ),
      ],
    );
  }
}

// Widget bantuan untuk Tanggal
class _DateBlock extends StatelessWidget {
  final String date;
  const _DateBlock({required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}