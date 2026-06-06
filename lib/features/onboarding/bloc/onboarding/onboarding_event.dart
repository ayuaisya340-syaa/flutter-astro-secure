part of 'onboarding_bloc.dart';

@freezed
class OnBoardingEvent with _$OnBoardingEvent {
  // Event ketika halaman digeser
  const factory OnBoardingEvent.pageChanged(int index) = _PageChanged;
  
  // Event ketika user menekan tombol Daftar/Masuk (Onboarding Selesai)
  const factory OnBoardingEvent.completed() = _Completed;
}