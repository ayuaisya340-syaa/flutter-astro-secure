part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.navigateToOnboarding() = _NavigateToOnboarding;
  const factory SplashState.navigateToLogin() = _NavigateToLogin;
  const factory SplashState.navigateToHome() = _NavigateToHome;
}