part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  factory AuthEvent.onSignIn(String email, String password) = OnSignIn;
  factory AuthEvent.onSignUp(String email, String password) = OnSignUp;
  factory AuthEvent.onLogout() = OnLogout;
}
