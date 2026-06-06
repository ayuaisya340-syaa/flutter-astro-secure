import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(const OnBoardingState()) {
    // Menangani saat user menggeser halaman
    on<_PageChanged>((event, emit) {
      // Menggunakan copyWith (bawaan Freezed) untuk memperbarui state
      emit(state.copyWith(currentPage: event.index));
    });

    // Menangani saat onboarding selesai
    on<_Completed>((event, emit) async {
      // Menyimpan data ke local storage bahwa user SUDAH PERNAH melihat onboarding
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('is_first_time', false);

      // Catatan: Kita tidak perlu emit state baru di sini karena navigasi
      // sudah di-handle langsung oleh tombol di halaman UI.
    });
  }
}
