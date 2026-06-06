import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/components/star_paintar.dart' show StarPainter;
import 'package:reminder_kelompok/core/components/custom_back_button.dart'; // Import CustomBackButton

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _starController;

  static const Color primaryThemeColor = Color(0xFF3A3C9B);
  static const Color buttonColor = Color(0xFFE2CEFF);
  static const Color iconDarkColor = Color(0xFF3A3C9B);

  // Data dummy laporan
  final List<Map<String, String>> laporanData = [
    {
      "title": "Mencuci Piring Setelah Selesai Makan",
      "time": "Waktu : 14.30 WIB",
    },
    {"title": "Latihan Basket Untuk Penilaian Ekskul", "time": "Waktu : 15.30"},
    {
      "title": "Membersihkan Lemari Pakaian Sendiri",
      "time": "Waktu : 17.00 WIB",
    },
    {"title": "Merapikan Kasur dan Kamar", "time": "Waktu : 17.30 WIB"},
    {"title": "Mengatur Jadwal Pelajaran Besok", "time": "Waktu : 18.30"},
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
                        child: CustomBackButton(
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

                // --- Judul ---
                const Text(
                  'Laporan Kegiatan',
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

                // --- List Laporan ---
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    physics: const BouncingScrollPhysics(),
                    itemCount: laporanData.length,
                    itemBuilder: (context, index) {
                      return _buildLaporanCard(
                        title: laporanData[index]['title']!,
                        time: laporanData[index]['time']!,
                        onTapBukti: () {
                          // Aksi lihat bukti ketika tombol ditekan
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Melihat bukti untuk: ${laporanData[index]['title']}',
                              ),
                              duration: const Duration(seconds: 2),
                            ),
                          );
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

  // Widget khusus untuk Card Laporan dengan desain meniru CustomCard
  // (Glassmorphism, radius 24, padding serupa) tapi menggunakan tombol "Lihat Bukti"
  Widget _buildLaporanCard({
    required String title,
    required String time,
    required VoidCallback onTapBukti,
  }) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ), // Jarak antar card sama seperti padding CustomCard
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12), // Warna dasar glassmorphism
        borderRadius: BorderRadius.circular(
          24,
        ), // Melengkung sama persis seperti CustomCard
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight
                        .w600, // Dibuat tebal agar menonjol seperti CustomCard
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          // Tombol "Lihat Bukti" khusus laporan
          ElevatedButton(
            onPressed: onTapBukti,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor, // Menggunakan warna #E2CEFF
              foregroundColor: iconDarkColor, // Warna teks ungu gelap
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              minimumSize: const Size(0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text(
              'Lihat Bukti',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
