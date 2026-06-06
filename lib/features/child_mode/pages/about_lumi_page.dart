import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// Sesuaikan import StarPainter dengan path di project kamu
import '../../../core/components/star_paintar.dart' show StarPainter;

// --- Data Model untuk Karakter ---
class CharacterData {
  final String title;
  final String description;
  final String imagePath;

  CharacterData({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class AboutLumiPage extends StatefulWidget {
  const AboutLumiPage({Key? key}) : super(key: key);

  @override
  State<AboutLumiPage> createState() => _AboutLumiPageState();
}

class _AboutLumiPageState extends State<AboutLumiPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _starController;
  late PageController _pageController;
  int _currentPage = 0;

  // List Data Karakter (Persis seperti teks di gambar referensimu)
  final List<CharacterData> characters = [
    CharacterData(
      title: 'Halo,aku Lumi',
      description:
          'Lumi si penjaga kecil adalah\ncahaya pertama di galaksi\ndigital. Meski kecil, ia selalu\nsiap menemani langkah awal\ndengan penuh semangat.',
      imagePath: 'assets/images/homepage karakter lumi.png',
    ),
    CharacterData(
      title: 'Halo,aku Terra',
      description:
          'Terra adalah penjaga yang\nlembut dan peduli. Ia selalu\nmengingatkan bahwa langkah\nkecil bisa membuat dunia\nmenjadi lebih baik.',
      imagePath:
          'assets/images/char_onboarding_2.png', // Pastikan nama file gambarmu sesuai
    ),
    CharacterData(
      title: 'Halo, Aku Pyro',
      description:
          'Pyro si penjaga yang penuh\nenergi dan keberanian. Ia ingat\nbahwa setiap usaha kecil bisa\nmenjadi langkah besar menuju\nkeberhasilan.',
      imagePath: 'assets/images/char_onboarding_4.png', // Pastikan nama file gambarmu sesuai
    ),
    CharacterData(
      title: 'Halo, Aku Nexo',
      description:
          'Nexo si penjaga yang penuh\nketelitian dan kecerdasan. Ia\ningat bahwa dengan berpikir\njernih dan teratur, setiap\nmasalah bisa diselesaikan\ndengan baik.',
      imagePath:
          'assets/images/char_onboarding_3.png', // Pastikan nama file gambarmu sesuai
    ),
    CharacterData(
      title:
          'Halo, Aku Nexo', // Teks di desainmu sama dengan Nexo biru, sesuaikan jika ada typo
      description:
          'Nexo si penjaga yang penuh\nketelitian dan kecerdasan. Ia\ningat bahwa dengan berpikir\njernih dan teratur, setiap\nmasalah bisa diselesaikan\ndengan baik.',
      imagePath:
          'assets/images/char_onboarding_1.png', // Pastikan nama file gambarmu sesuai
    ),
  ];

  // Warna sesuai dengan tema aplikasi
  static const Color primaryThemeColor = Color(0xFF3A3C9B);
  static const Color buttonColor = Color(0xFFE2CEFF);

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    // Inisialisasi animasi bintang persis seperti kodemu sebelumnya
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _starController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryThemeColor,
      body: Stack(
        children: [
          // --- 1. Animasi Bintang Latar Belakang menggunakan StarPainter ---
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _starController,
              builder: (context, child) {
                return CustomPaint(painter: StarPainter(_starController.value));
              },
            ),
          ),

          // --- 2. Konten Utama ---
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 30.0),
              child: Column(
                children: [
                  // --- Header (Tombol Back & Logo Astro.Secure) ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tombol Back Kotak Rounded
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Icon(
                            Icons.chevron_left_rounded,
                            color: primaryThemeColor,
                            size: 36,
                          ),
                        ),
                      ),

                      // Logo Tengah
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/logo.svg', // Pastikan path ini sesuai
                            width: 72,
                            height: 79,
                            fit: BoxFit.contain,
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                      // Spacer penyeimbang di kanan (agar logo tetap di tengah)
                      const SizedBox(width: 46),
                    ],
                  ),

                  // --- Konten Tengah (PageView Karakter & Teks) ---
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemCount: characters.length,
                      itemBuilder: (context, index) {
                        final character = characters[index];
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Container untuk Karakter & Efek Bayangan
                            SizedBox(
                              height: 280,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  // Bayangan oval di bawah Karakter
                                  Container(
                                    width: 200,
                                    height: 24,
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  // Gambar Karakter
                                  Image.asset(
                                    character.imagePath,
                                    width: 260,
                                    height: 260,
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(
                                        Icons.image_not_supported,
                                        size: 150,
                                        color: Colors.white54,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 32),

                            // Judul
                            Text(
                              character.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Deskripsi
                            Text(
                              character.description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.5,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  // --- Navigasi Bawah (Panah Kiri & Kanan) ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Tombol Kiri (Sembunyi jika di halaman pertama)
                      Opacity(
                        opacity: _currentPage > 0 ? 1.0 : 0.0,
                        child: IgnorePointer(
                          ignoring: _currentPage == 0,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        ),
                      ),
                      // Tombol Kanan (Sembunyi jika di halaman terakhir)
                      Opacity(
                        opacity: _currentPage < characters.length - 1
                            ? 1.0
                            : 0.0,
                        child: IgnorePointer(
                          ignoring: _currentPage == characters.length - 1,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
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
