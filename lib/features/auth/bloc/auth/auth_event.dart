part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // Event saat tombol Login ditekan dengan membawa input email dan password
  const factory AuthEvent.loginRequested({
    required String email,
    required String password,
  }) = _LoginRequested;

  // Event Daftar yang sudah disederhanakan: Hanya memerlukan Nama, Email, dan Password saja
  const factory AuthEvent.registerRequested({
    required String name,
    required String email,
    required String password,
  }) = _RegisterRequested;

  // Event saat tombol Lupa Sandi ditekan untuk mengirim link/OTP pemulihan ke email
  const factory AuthEvent.forgotPasswordRequested({required String email}) =
      _ForgotPasswordRequested;

  // Event saat tombol Verifikasi Akun ditekan untuk memproses kode OTP/Token verifikasi
  const factory AuthEvent.verificationRequested({
    required String code, // Kode OTP atau token verifikasi dari input user
  }) = _VerificationRequested;

  // Event ketika user melakukan logout dari dalam aplikasi
  const factory AuthEvent.logoutRequested() = _LogoutRequested;
}
