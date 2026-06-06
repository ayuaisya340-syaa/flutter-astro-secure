import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/components/star_paintar.dart' show StarPainter;

// Import seluruh halaman yang dibutuhkan untuk navigasi
import 'report_page.dart';
import 'manage_schedule_page.dart';
import 'manage_screentime_page.dart';
import 'manage_reward_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _starController;

  static const Color primaryThemeColor = Color(0xFF2C3E8C);
  static const Color buttonColor = Color(0xFFE2CEFF);
  static const Color iconDarkColor = Color(0xFF3A3C9B);

  // Daftar menu sesuai tampilan desain
  final List<String> menus = [
    "Lihat Laporan Aktivitas Anak",
    "Atur Jadwal Aktivitas Anak",
    "Atur Durasi Screentime",
    "Atur Reward",
  ];

  @override
  void initState() {
    super.initState();
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _starController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryThemeColor,
      body: Stack(
        children: [
          // --- Animasi Bintang ---
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _starController,
              builder: (context, child) {
                return CustomPaint(painter: StarPainter(_starController.value));
              },
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                // --- Header ---
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 10.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: _buildHeaderButton(
                          icon: Icons.arrow_back_ios_new_rounded,
                          onTap: () => Navigator.pop(context),
                        ),
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/logo.svg',
                            width: 72,
                            height: 79,
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.polyline_rounded,
                                color: Colors.white,
                                size: 42,
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // --- Judul & Garis Pembatas ---
                const Text(
                  'Mode Orang Tua',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  color: Colors.white.withOpacity(0.3),
                ),
                const SizedBox(height: 30),

                // --- Daftar Menu (Menggunakan Desain Card Custom Lokal) ---
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    physics: const BouncingScrollPhysics(),
                    itemCount: menus.length,
                    itemBuilder: (context, index) {
                      return _buildDashboardMenuCard(
                        title: menus[index],
                        onTap: () {
                          // Logika Navigasi Berdasarkan Nama Menu
                          if (menus[index] == "Lihat Laporan Aktivitas Anak") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ReportPage(),
                              ),
                            );
                          } else if (menus[index] ==
                              "Atur Jadwal Aktivitas Anak") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ManageSchedulePage(),
                              ),
                            );
                          } else if (menus[index] == "Atur Durasi Screentime") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ManageScreentimePage(),
                              ),
                            );
                          } else if (menus[index] == "Atur Reward") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ManageRewardPage(),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Tombol Header Kembali
  Widget _buildHeaderButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(icon, color: iconDarkColor, size: 24),
      ),
    );
  }

  // Widget Card khusus untuk Dashboard (Hanya Desain, Tanpa Waktu, Kamera, & Panah)
  Widget _buildDashboardMenuCard({
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(
            0.15,
          ), // Efek Glassmorphism transparan
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.0),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }
}
