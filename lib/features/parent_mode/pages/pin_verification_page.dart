import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/components/star_paintar.dart' show StarPainter;

import 'dashboard_page.dart'; // Import halaman Mode Orang Tua

class PinVerificationPage extends StatefulWidget {
  const PinVerificationPage({Key? key}) : super(key: key);

  @override
  State<PinVerificationPage> createState() => _PinVerificationPageState();
}

class _PinVerificationPageState extends State<PinVerificationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _starController;

  // Controllers dan FocusNodes untuk 4 kotak OTP terpisah
  final List<TextEditingController> _otpControllers = List.generate(
    4,
    (_) => TextEditingController(),
  );
  final List<FocusNode> _otpFocusNodes = List.generate(4, (_) => FocusNode());

  // Menentukan apakah pengguna sedang membuat PIN baru atau memverifikasi PIN yang sudah ada.
  // TODO: Pada implementasi aslinya, ambil nilai ini dari pengecekan Database / SharedPreferences.
  // Contoh: bool _hasExistingPin = prefs.getString('parent_pin') != null;
  bool _hasExistingPin =
      false; // Ubah menjadi true jika PIN sudah pernah dibuat

  // Konfigurasi warna kosmik Astro.Secure
  static const Color primaryBgColor = Color(
    0xFF3A3C9B,
  ); // Latar belakang luar malam biru
  static const Color accentPurple = Color(0xFFE2CEFF); // Lavender pastel terang
  static const Color darkTextPurple = Color(0xFF3A3C9B); // Teks/Ikon ungu gelap

  @override
  void initState() {
    super.initState();
    // Animasi kelap-kelip bintang latar belakang
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    // Otomatis fokus ke input PIN pertama saat halaman dibuka
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_otpFocusNodes[0]);
    });
  }

  @override
  void dispose() {
    _starController.dispose();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var node in _otpFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  // Fungsi untuk mengatur perpindahan fokus antar kotak OTP
  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty) {
      // Pindah ke kotak berikutnya jika diisi
      if (index < 3) {
        FocusScope.of(context).requestFocus(_otpFocusNodes[index + 1]);
      } else {
        // Otomatis menutup keyboard jika kotak terakhir diisi
        _otpFocusNodes[index].unfocus();
      }
    } else {
      // Pindah ke kotak sebelumnya jika dihapus
      if (index > 0) {
        FocusScope.of(context).requestFocus(_otpFocusNodes[index - 1]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      body: Stack(
        children: [
          // --- 1. Animasi Bintang Latar Belakang Kosmik ---
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
            child: Column(
              children: [
                // --- Bagian Header ---
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 10.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // Tombol Kembali di Kiri Atas
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              color: accentPurple,
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: darkTextPurple,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                      // Logo Astro.Secure di Tengah
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

                // --- Teks Judul Utama (Dinamis menyesuaikan status PIN) ---
                Center(
                  child: Text(
                    _hasExistingPin ? 'Verifikasi Kode' : 'Buat Kode',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Garis pembatas tipis di bawah judul
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),

                const SizedBox(height: 60),

                // --- 3. 4 Kotak Input PIN Glassmorphism ---
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return BaseOTPBox(
                        controller: _otpControllers[index],
                        focusNode: _otpFocusNodes[index],
                        onChanged: (value) => _onOtpChanged(value, index),
                      );
                    }),
                  ),
                ),

                const Spacer(),

                // --- 4. Tombol Utama Dinamis di Bagian Bawah ---
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48.0,
                    vertical: 40.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Menggabungkan isi teks dari ke-4 kotak OTP
                        String pinCode = _otpControllers
                            .map((e) => e.text)
                            .join();

                        if (pinCode.length == 4) {
                          // TODO: Logika penyimpanan atau pengecekan PIN ke Database
                          // Jika _hasExistingPin == false, simpan 'pinCode' sebagai PIN baru
                          // Jika _hasExistingPin == true, cek apakah 'pinCode' sama dengan PIN yang tersimpan

                          // Tampilkan pesan berhasil
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                _hasExistingPin
                                    ? 'Kode Berhasil Dikonfirmasi!'
                                    : 'Kode Baru Berhasil Dibuat!',
                              ),
                              backgroundColor: Colors.green,
                            ),
                          );

                          // Navigasi langsung menuju halaman Mode Orang Tua
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DashboardPage(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Silakan masukkan 4 digit kode lengkap!',
                              ),
                              backgroundColor: Colors.orange,
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: accentPurple,
                        foregroundColor: darkTextPurple,
                        elevation: 4,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text(
                        _hasExistingPin ? 'Konfirmasi' : 'Buat Kode',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          letterSpacing: 0.3,
                        ),
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
}

// =========================================================================
// WIDGET KHUSUS: Kotak OTP Standar (Desain disamakan dengan CustomTextField)
// =========================================================================
class BaseOTPBox extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String) onChanged;

  const BaseOTPBox({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<BaseOTPBox> createState() => _BaseOTPBoxState();
}

class _BaseOTPBoxState extends State<BaseOTPBox> {
  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isFocused = widget.focusNode.hasFocus;

    // Menghitung lebar kotak secara dinamis agar pas 4 di layar
    double boxSize = (MediaQuery.of(context).size.width - 60 - (3 * 16)) / 4;
    // Maksimal kotak berukuran 65x65
    boxSize = boxSize > 65 ? 65 : boxSize;

    return Container(
      height: boxSize,
      width: boxSize,
      decoration: BoxDecoration(
        // Menyamakan warna latar belakang dengan CustomTextField (Solid White 20% / 25%)
        color: Colors.white.withOpacity(isFocused ? 0.25 : 0.20),
        // Menjaga radius melengkung tetap kotak melengkung 16px (bentuk tetap)
        borderRadius: BorderRadius.circular(16),
        // Menyamakan ketebalan (0.5) dan opacity garis tepi (75% / 100%) dengan CustomTextField
        border: Border.all(
          color: Colors.white.withOpacity(isFocused ? 1.0 : 0.75),
          width: 0.5,
        ),
      ),
      child: Center(
        child: TextField(
          focusNode: widget.focusNode,
          controller: widget.controller,
          onChanged: widget.onChanged,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number, // Membuka numpad
          maxLength: 1, // Maksimal 1 angka per kotak
          style: const TextStyle(
            fontFamily: 'Nunito', // Menggunakan font Nunito agar seragam
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: "", // Menyembunyikan teks counter karakter
            isDense: true,
          ),
        ),
      ),
    );
  }
}
