part of 'onboarding_bloc.dart';

@freezed
abstract class OnBoardingState with _$OnBoardingState {
  // State menyimpan posisi halaman saat ini (default: 0)
  const factory OnBoardingState({
    @Default(0) int currentPage,
  }) = _OnBoardingState;
}