import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/components/star_paintar.dart' show StarPainter;

class ManageRewardPage extends StatefulWidget {
  const ManageRewardPage({Key? key}) : super(key: key);

  @override
  State<ManageRewardPage> createState() => _ManageRewardPageState();
}

class _ManageRewardPageState extends State<ManageRewardPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _starController;

  static const Color primaryThemeColor = Color(0xFF3A3C9B);
  static const Color buttonColor = Color(0xFFE2CEFF);
  static const Color iconDarkColor = Color(0xFF3A3C9B);

  // Menyimpan index yang dipilih
  int _selectedIndex = -1;

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
                  'Atur Reward',
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
                    itemCount: 5, // Sesuai desain, ada 5 item
                    itemBuilder: (context, index) {
                      return _buildRewardCard(
                        title: "Isi Reward",
                        subtitle: "Hari: Senin",
                        isSelected: _selectedIndex == index,
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
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

  // Widget Card yang desainnya disamakan persis dengan Manage Screentime Page
  Widget _buildRewardCard({
    required String title,
    required String subtitle,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 16.0,
        ), // Margin seragam 16.0 dengan Screentime & Dashboard
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ), // Padding seragam
        decoration: BoxDecoration(
          // Warnanya sedikit lebih terang saat dipilih agar pengguna tahu
          color: isSelected
              ? Colors.white.withOpacity(0.25)
              : Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20), // Border radius 20
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.0,
          ), // Ketebalan border 1.0
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600, // Tebal w600 agar seragam
                      letterSpacing: 0.3,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white.withOpacity(
                        0.7,
                      ), // Opacity disesuaikan
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // Indikator Bulatan Putih
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: isSelected
                    ? Border.all(color: iconDarkColor, width: 4)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
