import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Tambahkan import ini

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      // 1. Tunda selama 4 detik untuk memberikan waktu animasi Splash Screen berjalan
      await Future.delayed(const Duration(seconds: 4));

      // 2. Memanggil fungsi asinkronus untuk mengecek storage lokal
      final isFirstTime = await _checkIfFirstTime();
      final isLoggedIn = await _checkIfLoggedIn();

      if (isFirstTime) {
        emit(const SplashState.navigateToOnboarding());
      } else if (isLoggedIn) {
        emit(const SplashState.navigateToHome());
      } else {
        emit(const SplashState.navigateToLogin());
      }
    });
  }

  // Fungsi implementasi asli untuk mengecek apakah aplikasi pertama kali dibuka
  Future<bool> _checkIfFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    // Jika key 'is_first_time' belum ada (bernilai null), berarti ini pertama kali (return true)
    // Jika sudah ada, kembalikan nilai boolean yang tersimpan di dalamnya
    return prefs.getBool('is_first_time') ?? true;
  }

  // Fungsi implementasi asli untuk mengecek status login pengguna
  Future<bool> _checkIfLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    // Cek apakah ada key 'is_logged_in'. Jika tidak ada, kembalikan false.
    return prefs.getBool('is_logged_in') ?? false;
  }
}
