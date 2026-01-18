import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_portfolio/app_colors.dart';
import 'package:web_portfolio/utils/url_service.dart';

const String _fotoProfilePath = 'assets/foto_profil.png';

class HeroSection extends StatelessWidget {
  final bool isMobile;
  final VoidCallback? onContactTap;

  const HeroSection({super.key, this.isMobile = false, this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Tinggi minimum agar desain background diagonal tetap terlihat proporsional
        final double minHeight = isMobile
            ? 700
            : MediaQuery.of(context).size.height * 0.90;

        return Container(
          constraints: BoxConstraints(minHeight: minHeight),
          width: double.infinity,
          child: Stack(
            children: [
              // 1. BACKGROUND LAYER
              Positioned.fill(
                child: CustomPaint(
                  painter: _DiagonalBackgroundPainter(
                    color: AppColors.darkGreen,
                    backgroundColor: AppColors.offWhite,
                    isMobile: isMobile,
                  ),
                ),
              ),

              // 2. CONTENT LAYER
              isMobile
                  ? _MobileLayout(isMobile: true, onContactTap: onContactTap)
                  : SizedBox(
                      height: minHeight,
                      child: _DesktopLayout(onContactTap: onContactTap),
                    ),
            ],
          ),
        );
      },
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  final VoidCallback? onContactTap;
  const _DesktopLayout({this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi, I am',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          letterSpacing: 1.0,
                        ),
                      ).animate().fadeIn(delay: 200.ms).slideX(begin: -0.2),

                      const SizedBox(height: 15),

                      const Text(
                        'M. Aziz Rizaldi',
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.w900,
                          color: AppColors.darkGreen,
                          height: 1.1,
                          letterSpacing: -1.5,
                        ),
                      ).animate().fadeIn(delay: 400.ms).slideX(begin: -0.2),

                      const SizedBox(height: 10),

                      Text(
                        'MOBILE APPLICATION DEVELOPER | SOFTWARE ENGINEER',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                        ),
                      ).animate().fadeIn(delay: 600.ms).slideX(begin: -0.2),

                      const SizedBox(height: 40),

                      Row(
                        children: [
                          _SocialBox(icon: Icons.email, onPressed: launchEmail),
                          const SizedBox(width: 16),
                          _SocialBox(
                            icon: FontAwesomeIcons.github,
                            onPressed: () => launchUrlService(githubUrl),
                          ),
                          const SizedBox(width: 16),
                          _SocialBox(
                            icon: FontAwesomeIcons.linkedin,
                            onPressed: () => launchUrlService(linkedInUrl),
                          ),
                        ],
                      ).animate().fadeIn(delay: 800.ms),

                      const SizedBox(height: 50),

                      _HeroCtaButton(onPressed: onContactTap ?? () {}),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: _ProfileImage(isMobile: false),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  final bool isMobile;
  final VoidCallback? onContactTap;

  const _MobileLayout({required this.isMobile, this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _ProfileImage(isMobile: true),

          const SizedBox(height: 40),

          const Text(
            'Hi, I am',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'M. Aziz Rizaldi',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: AppColors.darkGreen,
              height: 1.1,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Application Developer / IT Support',
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialBox(icon: Icons.email, onPressed: launchEmail),
              const SizedBox(width: 12),
              _SocialBox(
                icon: FontAwesomeIcons.github,
                onPressed: () => launchUrlService(githubUrl),
              ),
              const SizedBox(width: 12),
              _SocialBox(
                icon: FontAwesomeIcons.linkedin,
                onPressed: () => launchUrlService(linkedInUrl),
              ),
            ],
          ),

          const SizedBox(height: 30),
          _HeroCtaButton(onPressed: onContactTap ?? () {}),
        ],
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  final bool isMobile;
  const _ProfileImage({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile ? 220 : null,
      height: isMobile ? 220 : double.infinity,

      decoration: BoxDecoration(
        shape: isMobile ? BoxShape.circle : BoxShape.rectangle,
        color: isMobile ? AppColors.offWhite : Colors.transparent,
        border: isMobile
            ? Border.all(color: AppColors.darkGreen, width: 4)
            : null,
        // FIXED: Menggunakan .withValues() menggantikan .withOpacity()
        boxShadow: isMobile
            ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ]
            : null,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(isMobile ? 200 : 0),
        child: Image.asset(
          _fotoProfilePath,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
    ).animate().fadeIn(duration: 800.ms).slideY(begin: 0.1, end: 0);
  }
}

class _SocialBox extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _SocialBox({required this.icon, required this.onPressed});

  @override
  State<_SocialBox> createState() => _SocialBoxState();
}

class _SocialBoxState extends State<_SocialBox> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: _isHovered ? AppColors.darkGreen : const Color(0xFFE0E0E0),
            borderRadius: BorderRadius.circular(4),
            // FIXED: Menggunakan .withValues() menggantikan .withOpacity()
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: AppColors.darkGreen.withValues(alpha: 0.4),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
          ),
          child: Icon(
            widget.icon,
            color: _isHovered ? Colors.white : Colors.black87,
            size: 24,
          ),
        ),
      ),
    );
  }
}

class _HeroCtaButton extends StatelessWidget {
  final VoidCallback onPressed;
  const _HeroCtaButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkGreen,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 22),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: const Text(
        "CONTACT ME",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

class _DiagonalBackgroundPainter extends CustomPainter {
  final Color color;
  final Color backgroundColor;
  final bool isMobile;

  _DiagonalBackgroundPainter({
    required this.color,
    required this.backgroundColor,
    required this.isMobile,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = backgroundColor;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    paint.color = color;
    final path = Path();

    if (isMobile) {
      path.moveTo(0, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height * 0.40);
      path.lineTo(0, size.height * 0.30);
    } else {
      path.moveTo(size.width * 0.55, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width * 0.35, size.height);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
