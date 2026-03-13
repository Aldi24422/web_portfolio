import 'package:flutter/material.dart';
import 'package:web_portfolio/app_colors.dart';

class ProjectsSection extends StatelessWidget {
  final bool isMobile;
  const ProjectsSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.offWhite,
      padding: EdgeInsets.symmetric(
        vertical: 60.0,
        horizontal: isMobile ? 20.0 : 40.0,
      ),
      child: Column(
        children: [
          // JUDUL UTAMA
          const Text(
            'Karya',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Beberapa proyek yang telah saya kembangkan',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),

          // GRID PROJECTS
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = isMobile
                  ? 1
                  : (constraints.maxWidth > 1000 ? 3 : 2);
              double cardWidth = constraints.maxWidth / crossAxisCount - 32;

              return Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: _projects
                    .map(
                      (project) => SizedBox(
                        width: cardWidth.clamp(280, 400),
                        child: _ProjectCard(
                          project: project,
                          isMobile: isMobile,
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Model data untuk project
class ProjectData {
  final String title;
  final String description;
  final List<String> images;

  const ProjectData({
    required this.title,
    required this.description,
    required this.images,
  });
}

// Daftar project
final List<ProjectData> _projects = [
  ProjectData(
    title: 'SiniOps Enterprise',
    description:
        'SiniOps Enterprise adalah platform manajemen bisnis terpadu yang dirancang khusus untuk mendigitalisasi dan mengoptimalkan seluruh ekosistem operasional gerai Sini Ngopi. Aplikasi ini berfungsi sebagai pusat komando yang menghubungkan manajemen inventaris bahan baku, pengaturan menu dinamis, dan pemantauan kinerja staf dalam satu antarmuka yang aman dan responsif. Dilengkapi dengan fitur akses bertingkat (Role-Based Access) dan integrasi pembayaran QRIS.',
    images: [
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.09 AM.jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.10 AM.jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.10 AM (1).jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.11 AM.jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.11 AM (1).jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.12 AM.jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.12 AM (1).jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.12 AM (2).jpeg',
      'assets/siniops/WhatsApp Image 2026-01-12 at 5.23.13 AM.jpeg',
    ],
  ),
  ProjectData(
    title: 'Woodball Scoreboard',
    description:
        'Woodball Scoreboard adalah aplikasi manajemen olahraga yang dirancang untuk mendigitalisasi seluruh proses kompetisi Woodball, menggantikan pencatatan manual dengan sistem digital yang akurat dan transparan. Aplikasi ini memfasilitasi kolaborasi efektif antara Pelatih dan Atlet melalui fitur pemantauan skor secara langsung (real-time) dan analisis performa berbasis data yang divisualisasikan dalam grafik statistik. Dengan kemampuan menangani berbagai format pertandingan serta manajemen profil pengguna yang aman, aplikasi ini menawarkan solusi praktis untuk meningkatkan efisiensi operasional turnamen dan membantu pelatih dalam merumuskan strategi tim yang lebih baik.',
    images: [
      'assets/woodball scoreboard/WhatsApp Image 2026-01-11 at 7.37.37 PM.jpeg',
      'assets/woodball scoreboard/WhatsApp Image 2026-01-11 at 7.37.37 PM (1).jpeg',
      'assets/woodball scoreboard/WhatsApp Image 2026-01-11 at 7.37.38 PM.jpeg',
      'assets/woodball scoreboard/WhatsApp Image 2026-01-11 at 7.37.39 PM.jpeg',
      'assets/woodball scoreboard/WhatsApp Image 2026-01-11 at 7.37.40 PM.jpeg',
    ],
  ),
  ProjectData(
    title: 'Kurash Usul Scoring',
    description:
        'Kurash Usul Scoring adalah instrumen digital berbasis Flutter yang direkayasa untuk memodernisasi sistem arbitrase dalam kompetisi olahraga bela diri Kurash. Aplikasi ini mentransformasi papan skor konvensional menjadi antarmuka digital yang presisi, memfasilitasi wasit dalam mencatat perolehan teknik (seperti Khalol, Yonbosh, dan Chala) serta akumulasi penalti secara real-time dengan akurasi tinggi. Dirancang dengan fokus pada responsivitas antarmuka pengguna (UI) dan kejelasan visual.',
    images: [
      'assets/kurash usul scoring/Screenshot 2026-01-12 051437.png',
      'assets/kurash usul scoring/Screenshot 2026-01-12 051503.png',
      'assets/kurash usul scoring/Screenshot 2026-01-12 051533.png',
      'assets/kurash usul scoring/Screenshot 2026-01-12 051559.png',
      'assets/kurash usul scoring/Screenshot 2026-01-12 051617.png',
    ],
  ),
  ProjectData(
    title: 'Annogram',
    description:
        'Annogram adalah platform komunikasi digital berbasis ekosistem Telegram yang dirancang untuk menghadirkan pengalaman bertukar pesan yang lebih responsif, aman, dan kaya fitur. Aplikasi ini memadukan kemampuan messaging instan yang andal dengan fasilitas komunikasi real-time lengkap, termasuk panggilan suara dan video berkualitas tinggi serta dukungan konferensi grup yang stabil. Difokuskan pada kenyamanan dan privasi pengguna, Annogram dilengkapi dengan sistem keamanan berlapis untuk perlindungan akses, manajemen media yang efisien, serta antarmuka yang dapat dipersonalisasi sepenuhnya.',
    images: [
      'assets/annogram/Screenshot 2025-12-31 171947.png',
      'assets/annogram/Screenshot 2025-12-31 173427.png',
      'assets/annogram/Screenshot 2025-12-31 205808.png',
      'assets/annogram/WhatsApp Image 2026-01-12 at 5.09.45 AM.jpeg',
    ],
  ),
  ProjectData(
    title: 'Notification Tester',
    description:
        'Notification Tester adalah alat bantu praktis yang dirancang untuk mempermudah pengujian sistem notifikasi pada perangkat mobile. Aplikasi ini memungkinkan pengembang memastikan setiap pesan—mulai dari teks instan, notifikasi bergambar, hingga pengingat terjadwal—dapat diterima dengan baik oleh pengguna. Dengan fitur simulasi yang fleksibel, solusi ini membantu menjaga kualitas pengalaman pengguna.',
    images: [
      'assets/notification tester/WhatsApp Image 2026-01-12 at 5.23.40 AM.jpeg',
      'assets/notification tester/WhatsApp Image 2026-01-12 at 5.23.40 AM (1).jpeg',
    ],
  ),
  ProjectData(
    title: 'QR Studio',
    description:
        'QR Studio adalah aplikasi generator QR Code lintas platform yang dirancang untuk memperkuat identitas visual (branding) digital melalui kustomisasi desain yang fleksibel dan mendalam. Aplikasi ini mampu mengubah berbagai jenis informasi esensial—mulai dari akses Wi-Fi otomatis, kontak bisnis digital (VCard), hingga lokasi geografis—menjadi aset visual fungsional yang dapat disesuaikan sepenuhnya, termasuk pemilihan palet warna, modifikasi bentuk pola, dan integrasi logo perusahaan.',
    images: [
      'assets/qr studio/Screenshot 2026-01-12 051805.png',
      'assets/qr studio/Screenshot 2026-01-12 052010.png',
      'assets/qr studio/Screenshot 2026-01-12 052021.png',
    ],
  ),
  ProjectData(
    title: 'Whisk Automation Bot',
    description:
        'Whisk Automation Bot adalah tool produktivitas berbasis ekstensi Chrome yang dirancang untuk mengotomatisasi proses pembuatan gambar AI secara massal di platform Google Whisk Lab. Aplikasi ini menghilangkan beban kerja manual dengan memungkinkan pengguna mengimpor ratusan prompt sekaligus dari file Excel, yang kemudian dieksekusi secara otomatis. Dibangun menggunakan standar Manifest V3 yang modern.',
    images: ['assets/whisk bot/Screenshot 2026-01-12 053616.png'],
  ),
];

// Widget Card untuk setiap project
class _ProjectCard extends StatefulWidget {
  final ProjectData project;
  final bool isMobile;

  const _ProjectCard({required this.project, required this.isMobile});

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: isHovered
            ? Matrix4.translationValues(0, -8, 0)
            : Matrix4.identity(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: isHovered
                  ? const Color.fromRGBO(0, 0, 0, 0.15)
                  : const Color.fromRGBO(0, 0, 0, 0.08),
              blurRadius: isHovered ? 24 : 12,
              offset: Offset(0, isHovered ? 12 : 6),
            ),
          ],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => _showProjectDetail(context, widget.project),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thumbnail Image
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: AspectRatio(
                  aspectRatio: 16 / 10,
                  child: Image.asset(
                    widget.project.images.first,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppColors.beige,
                        child: const Center(
                          child: Icon(
                            Icons.image_not_supported_outlined,
                            size: 48,
                            color: AppColors.mediumGreen,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // Content
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.project.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.project.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(
                          Icons.photo_library_outlined,
                          size: 16,
                          color: AppColors.mediumGreen,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '${widget.project.images.length} gambar',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.mediumGreen,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Lihat Detail →',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.darkGreen,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showProjectDetail(BuildContext context, ProjectData project) {
    showDialog(
      context: context,
      builder: (context) => _ProjectDetailDialog(project: project),
    );
  }
}

// Dialog untuk menampilkan detail project dengan gallery
class _ProjectDetailDialog extends StatefulWidget {
  final ProjectData project;

  const _ProjectDetailDialog({required this.project});

  @override
  State<_ProjectDetailDialog> createState() => _ProjectDetailDialogState();
}

class _ProjectDetailDialogState extends State<_ProjectDetailDialog> {
  int currentImageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 768;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(isMobile ? 16 : 40),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 1000,
          maxHeight: size.height * 0.9,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // Header dengan tombol close
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.project.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkGreen,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.beige,
                    ),
                  ),
                ],
              ),
            ),

            // Image Gallery
            Expanded(
              child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        // Gambar utama
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 10, 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.project.images[currentImageIndex],
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: AppColors.beige,
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 64,
                        color: AppColors.mediumGreen,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),

        // Sidebar dengan thumbnail dan deskripsi
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail gallery
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.project.images.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => setState(() => currentImageIndex = index),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: currentImageIndex == index
                                  ? AppColors.darkGreen
                                  : Colors.transparent,
                              width: 3,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              widget.project.images[index],
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 80,
                                  height: 80,
                                  color: AppColors.beige,
                                  child: const Icon(
                                    Icons.image_not_supported_outlined,
                                    color: AppColors.mediumGreen,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 16),

                // Deskripsi
                const Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGreen,
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      widget.project.description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        height: 1.6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image dengan PageView
          AspectRatio(
            aspectRatio: 16 / 10,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => currentImageIndex = index);
                  },
                  itemCount: widget.project.images.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        widget.project.images[index],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: AppColors.beige,
                            child: const Center(
                              child: Icon(
                                Icons.image_not_supported_outlined,
                                size: 48,
                                color: AppColors.mediumGreen,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                // Indicator
                Positioned(
                  bottom: 12,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.project.images.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: currentImageIndex == index ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: currentImageIndex == index
                              ? AppColors.darkGreen
                              : Colors.white.withValues(alpha: 0.6),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Deskripsi
          const Text(
            'Deskripsi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.project.description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
