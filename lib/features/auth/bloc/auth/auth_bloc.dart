import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial()) {
    // 1. Handler untuk Proses Login
    on<_LoginRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        // Simulasi respons jaringan/API selama 2 detik
        await Future.delayed(const Duration(seconds: 2));

        if (event.email.isNotEmpty && event.password.isNotEmpty) {
          // Simulasi mendapatkan tipe akun dari server backend (default: 'parent')
          const simulatedAccountType = 'parent';

          // SIMPAN STATUS: Menandai di penyimpanan lokal HP bahwa user sudah berhasil login
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('is_logged_in', true);
          await prefs.setString('account_type', simulatedAccountType);

          emit(
            const AuthState.authenticated(accountType: simulatedAccountType),
          );
        } else {
          emit(const AuthState.error("Email dan password tidak boleh kosong"));
        }
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });

    // 2. Handler untuk Proses Pendaftaran Akun (Register) - Disesuaikan dengan form sederhana
    on<_RegisterRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await Future.delayed(const Duration(seconds: 2));

        // Validasi minimal form pendaftaran
        if (event.name.isNotEmpty &&
            event.email.isNotEmpty &&
            event.password.isNotEmpty) {
          // Setelah pendaftaran awal sukses, kita set default 'parent' terlebih dahulu
          // User nantinya bisa mengubah atau menambahkan akun anak ('child') dari dalam aplikasi
          const defaultAccountType = 'parent';

          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('is_logged_in', true);
          await prefs.setString('account_type', defaultAccountType);

          emit(const AuthState.authenticated(accountType: defaultAccountType));
        } else {
          emit(
            const AuthState.error(
              "Harap isi semua kolom pendaftaran dengan benar",
            ),
          );
        }
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });

    // 3. Handler untuk Lupa Sandi (Forgot Password)
    on<_ForgotPasswordRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await Future.delayed(const Duration(seconds: 2));

        if (event.email.isNotEmpty && event.email.contains('@')) {
          emit(
            const AuthState.codeSentSuccess(
              "Tautan pemulihan sandi berhasil dikirim ke email Anda. Silakan periksa kotak masuk.",
            ),
          );
        } else {
          emit(const AuthState.error("Format email tidak valid atau kosong"));
        }
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });

    // 4. Handler untuk Verifikasi Akun (OTP / Kode Verifikasi)
    on<_VerificationRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await Future.delayed(const Duration(seconds: 2));

        if (event.code.isNotEmpty && event.code.length >= 4) {
          emit(
            const AuthState.verificationSuccess(
              "Akun Anda telah berhasil diverifikasi! Selamat menjelajah.",
            ),
          );
        } else {
          emit(
            const AuthState.error(
              "Kode verifikasi tidak sesuai atau kedaluwarsa",
            ),
          );
        }
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });

    // 5. Handler untuk Logout
    on<_LogoutRequested>((event, emit) async {
      emit(const AuthState.loading());
      try {
        // Hapus status login dan data tipe akun dari memori internal HP
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove('is_logged_in');
        await prefs.remove('account_type');

        emit(const AuthState.unauthenticated());
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    });
  }
}
