part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  // State saat proses loading sedang berjalan (misal: saat memanggil API/Firebase)
  const factory AuthState.loading() = _Loading;

  // State saat user berhasil masuk secara penuh (Login/Register sukses)
  const factory AuthState.authenticated({
    required String
    accountType, // Menyimpan tipe akun aktif ('parent' atau 'child') untuk rute UI
  }) = _Authenticated;

  // State saat user belum login atau setelah berhasil logout
  const factory AuthState.unauthenticated() = _Unauthenticated;

  // State sukses ketika tautan/OTP reset sandi berhasil dikirim ke email
  const factory AuthState.codeSentSuccess(String message) = _CodeSentSuccess;

  // State sukses ketika kode OTP akun berhasil diverifikasi dengan benar
  const factory AuthState.verificationSuccess(String message) =
      _VerificationSuccess;

  // State error umum yang menampung pesan kesalahan untuk ditampilkan via SnackBar/Dialog
  const factory AuthState.error(String message) = _Error;
}
