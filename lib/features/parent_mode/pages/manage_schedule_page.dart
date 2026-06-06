import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'level_page.dart'; // Import halaman detail kegiatan level
import '../../../core/components/star_paintar.dart' show StarPainter;

class ManageSchedulePage extends StatefulWidget {
  const ManageSchedulePage({Key? key}) : super(key: key);

  @override
  State<ManageSchedulePage> createState() => _ManageSchedulePageState();
}

class _ManageSchedulePageState extends State<ManageSchedulePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _starController;

  static const Color primaryThemeColor = Color(0xFF3A3C9B);
  static const Color buttonColor = Color(0xFFE2CEFF);
  static const Color iconDarkColor = Color(0xFF3A3C9B);

  final List<String> levels = [
    "Jadwal Aktivitas Anak level 1",
    "Jadwal Aktivitas Anak level 2",
    "Jadwal Aktivitas Anak level 3",
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
                const Text(
                  'Jadwal Kegiatan',
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
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    physics: const BouncingScrollPhysics(),
                    itemCount: levels.length,
                    itemBuilder: (context, index) {
                      return _buildLevelCard(levels[index], () {
                        // Menentukan jumlah card berdasarkan level yang dipilih
                        int jumlahCard = 3; // Default untuk Level 1

                        if (index == 1) {
                          // Jika Level 2
                          jumlahCard = 5;
                        } else if (index == 2) {
                          // Jika Level 3
                          jumlahCard = 5;
                        }

                        // Navigasi ke halaman detail kegiatan level
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LevelPage(
                              levelName: levels[index],
                              itemCount: jumlahCard,
                            ),
                          ),
                        );
                      });
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

  // Widget Card yang desainnya disamakan dengan Dashboard Page
  Widget _buildLevelCard(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 16.0,
        ), // Margin seragam dengan Dashboard
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(
            0.15,
          ), // Efek Glassmorphism transparan
          borderRadius: BorderRadius.circular(20), // Border radius 20
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.0),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight:
                  FontWeight.w600, // Dibuat w600 agar seimbang dengan Dashboard
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }
}
