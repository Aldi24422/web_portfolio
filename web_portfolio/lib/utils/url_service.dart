import 'package:url_launcher/url_launcher.dart';

// --- DATA KONSTAN UNTUK URL DARI CV ---

// FIXED: Mengganti ke lowerCamelCase
const String linkedInUrl =
    'https://www.linkedin.com/in/m-aziz-rizaldi-b88b04157/';
const String githubUrl = 'https://github.com/Aldi24422/web_portfolio';
const String instagramUrl = 'https://instagram.com/azizrizaldi_';
const String emailAddress = 'azizrizaldi18@gmail.com';
const String phoneNumber = '+62 812-5280-1386';
const String linkSkripsi =
    'https://ejournal.unesa.ac.id/index.php/jinacs/article/view/72114?_gl=1*42guv3*_ga*MTUwODEwODg3Ny4xNzY4MzE3MTAx*_ga_1LGDR1BZ87*czE3NjgzMTcxMDAkbzEkZzEkdDE3NjgzMTcxMTgkajQyJGwwJGgw*_ga_R28X49P7SM*czE3NjgzMTcxMDAkbzEkZzEkdDE3NjgzMTcxMTgkajQyJGwwJGgw*_ga_ZHT1V2WFYG*czE3NjgzMTcxMDAkbzEkZzEkdDE3NjgzMTcxMTgkajQyJGwwJGgw';

// Fungsi utama untuk meluncurkan URL
void launchUrlService(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $url');
  }
}

// Fungsi helper untuk membuka email
void launchEmail() {
  // Menggunakan nama konstanta baru
  launchUrlService('mailto:$emailAddress');
}

// Fungsi helper untuk membuka telepon
void launchPhone() {
  // Menggunakan nama konstanta baru
  launchUrlService('tel:$phoneNumber');
}
