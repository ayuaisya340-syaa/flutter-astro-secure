import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/components/star_paintar.dart' show StarPainter;

class LevelPage extends StatefulWidget {
  final String levelName;
  final int itemCount;

  // Constructor default untuk Level 1
  const LevelPage({
    Key? key,
    this.levelName = "Kegiatan Level 1",
    this.itemCount = 3,
  }) : super(key: key);

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _starController;

  static const Color primaryThemeColor = Color(0xFF3A3C9B);
  static const Color buttonColor = Color(0xFFE2CEFF);
  static const Color iconDarkColor = Color(0xFF3A3C9B);

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
                Text(
                  widget.levelName,
                  style: const TextStyle(
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
                    itemCount: widget.itemCount,
                    itemBuilder: (context, index) {
                      return _buildEditCard();
                    },
                  ),
                ),
                // Tombol Simpan di bagian bawah
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 10, 24, 30),
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi Simpan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      foregroundColor: iconDarkColor,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Simpan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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

  // Card dengan gaya desain yang disamakan persis dengan Dashboard & Screentime (menggunakan icon aset kustom)
  Widget _buildEditCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0), // Margin disamakan 16.0
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0), // Padding disamakan
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15), // Efek Glassmorphism 0.15
        borderRadius: BorderRadius.circular(20), // Border radius 20
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.0), // Garis tepi 1.0 dengan opasitas 0.3
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Isi Jadwal Kegiatan",
              style: TextStyle(
                color: Colors.white.withOpacity(0.6), // Teks pudar/placeholder
                fontSize: 16,
                fontWeight: FontWeight.w600, // Ketebalan teks diselaraskan
                letterSpacing: 0.3,
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              // Aksi saat ikon edit di klik
            },
            child: Container(
              height: 40, // Dimensi tombol disesuaikan agar proporsional
              width: 40,
              padding: const EdgeInsets.all(8.0), // Padding agar ikon gambar di dalamnya tidak terlalu besar meluap
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(12), // Radius melengkung 12 agar serasi dengan kartu radius 20
              ),
              child: Image.asset(
                'assets/icons/icon_atur_jadwal.png', // Menggunakan ikon aset gambar kustom yang diminta
                fit: BoxFit.contain,
                color: iconDarkColor, // Menggunakan filter warna ungu tua kustom agar serasi
                errorBuilder: (context, error, stackTrace) {
                  // Fallback icon jika aset gambar tidak ditemukan
                  return const Icon(
                    Icons.edit_note_rounded,
                    color: iconDarkColor,
                    size: 24,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}