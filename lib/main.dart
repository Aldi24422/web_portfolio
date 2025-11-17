import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts
import 'package:web_portfolio/app_colors.dart';   // Import warna kustom
import 'package:web_portfolio/home_page.dart';   // <-- 1. IMPORT HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio M. Aziz Rizaldi',
      debugShowCheckedModeBanner: false,
      
      // Atur tema default aplikasi
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
        // Atur font default ke "Poppins" dan warna teks default ke hijau tua
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: AppColors.darkGreen), 
      ),
      
      // 2. GANTI home: menjadi HomePage()
      home: const HomePage(), 
    );
  }
}