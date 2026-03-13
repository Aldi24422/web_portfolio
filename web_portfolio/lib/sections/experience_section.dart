import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class ExperienceSection extends StatelessWidget {
  final bool isMobile;
  const ExperienceSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: AppColors.beige,
        padding: EdgeInsets.symmetric(
          vertical: 60.0,
          horizontal: isMobile ? 20.0 : 40.0,
        ),
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

            // TabBar
            TabBar(
              isScrollable: isMobile,
              labelColor: AppColors.darkGreen,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppColors.mediumGreen,
              indicatorWeight: 3.0,
              tabs: const [
                Tab(
                  child: Text(
                    'Pengalaman Kerja',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Pengalaman Proyek',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Profesional',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // TabBarView
            Container(
              height: isMobile ? 550 : 500,
              constraints: const BoxConstraints(maxWidth: 800),
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

// --- TAB 1: PENGALAMAN KERJA ---
class _WorkTab extends StatelessWidget {
  final bool isMobile;
  const _WorkTab({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Application Developer (MSIB)',
          subtitle: 'Disdukcapil Surabaya',
          date: 'Agustus 2024 - Januari 2025',
          details: const [
            'Mengintegrasikan WhatsApp API ke dalam aplikasi web pengaduan publik.',
            'Mendesain ulang total UI aplikasi menjadi lebih modern dan intuitif.',
            'Mengoptimalkan algoritma backend untuk balasan otomatis yang lebih cepat.',
            'Menjalankan siklus pengembangan penuh (analisis, perancangan, dan pengujian).',
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Application Developer & IT Support (Magang)',
          subtitle: 'PT Sucofindo',
          date: 'Januari - April 2024',
          details: const [
            'Mengembangkan aplikasi berbasis web (progressive) : Asset Maintenance.',
            'Instalasi Ms Office, instalasi, instalasi ulang, dan pembaruan Windows.',
            'Setup perangkat PC dan laptop baru.',
            'Maintenance backup Windows SQL Server.',
          ],
        ),
      ],
    );
  }
}

// --- TAB 2: PENGALAMAN PROYEK ---
class _ProjectTab extends StatelessWidget {
  final bool isMobile;
  const _ProjectTab({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ExperienceCard(
          isMobile: isMobile,
          title: 'SiniOps Enterprise',
          subtitle: 'Peran: Fullstack Developer',
          date: 'Januari 2026',
          details: const [
            'Mengembangkan aplikasi manajemen bisnis menggunakan Flutter.',
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Kurash Usul Scoring',
          subtitle: 'Peran: Fullstack Developer',
          date: 'Juni - Desember 2025',
          details: const [
            'Mengembangkan aplikasi perhitungan skor untuk Kurash Usul menggunakan Flutter.',
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Annogram',
          subtitle: 'Peran: Fullstack Developer',
          date: 'Desember 2025',
          details: const ['Mengembangkan aplikasi chatting dengan fitur lock.'],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Woodball Scoreboard',
          subtitle: 'Peran: Fullstack Developer',
          date: 'Januari - April 2025',
          details: const [
            'Mengembangkan aplikasi scoreboard untuk woodball menggunakan Flutterflow dengan integrasi back-end Firebase.',
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Aplikasi Asset Monitoring pada PT Sucofindo',
          subtitle: 'Peran: Low Code Developer',
          date: 'Januari - April 2024',
          details: const [
            'Mengembangkan aplikasi berbasis web (progressive web) menggunakan Flutterflow dengan integrasi back-end Firebase.',
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Aplikasi Stok Barang pada CV. Aldi Printing',
          subtitle: 'Peran: Low Code Developer',
          date: 'November 2023',
          details: const [
            'Mengembangkan aplikasi berbasis web menggunakan Flutterflow dengan integrasi back-end Firebase.',
          ],
        ),
      ],
    );
  }
}

// --- TAB 3: PROFESIONAL (Panitia & Atlet) ---
class _ProfessionalTab extends StatelessWidget {
  final bool isMobile;
  const _ProfessionalTab({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Panitia Pelaksana Cabor Kurash bidang IT',
          subtitle: 'Tim PORPROV VIII Jatim',
          date: 'Juni - Desember 2025',
          details: const [
            'Mengembangkan aplikasi Kurash Usul Scoring (Versi 1 & 2) digitalisasi penilaian pertandingan.',
            'Operator Sistem Penilaian Digital: input skor dari wasit ke aplikasi secara real-time.',
            'Mengelola teknis Live Streaming dan memantau stabilitas sistem IT selama pertandingan.',
          ],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Tim PORPROV VIII Jatim',
          subtitle: 'Peran: Atlet Cabor Kurash Kota Surabaya',
          date: 'September 2023',
          details: const [],
        ),
        _ExperienceCard(
          isMobile: isMobile,
          title: 'Tim PORPROV VII Jatim',
          subtitle: 'Peran: Atlet Cabor Woodball Kota Surabaya',
          date: 'Juni 2022',
          details: const [],
        ),
      ],
    );
  }
}

// --- REUSABLE WIDGETS ---

class _ExperienceCard extends StatelessWidget {
  final bool isMobile;
  final String title;
  final String subtitle;
  final String date;
  final List<String> details;

  const _ExperienceCard({
    this.isMobile = false,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
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
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _TitleBlock(title: title, subtitle: subtitle),
                    const SizedBox(height: 12),
                    _DateBlock(date: date),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: _TitleBlock(title: title, subtitle: subtitle),
                    ),
                    const SizedBox(width: 20),
                    _DateBlock(date: date),
                  ],
                ),
          if (details.isNotEmpty) const Divider(height: 30),
          ...details.map(
            (detail) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(color: AppColors.darkGreen),
                  ),
                  Expanded(
                    child: Text(
                      detail,
                      style: const TextStyle(
                        color: AppColors.darkGreen,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
          style: const TextStyle(fontSize: 14, color: AppColors.mediumGreen),
        ),
      ],
    );
  }
}

class _DateBlock extends StatelessWidget {
  final String date;
  const _DateBlock({required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(date, style: const TextStyle(fontSize: 14, color: Colors.grey));
  }
}
