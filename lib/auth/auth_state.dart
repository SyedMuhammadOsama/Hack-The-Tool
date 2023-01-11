part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool isLoading,
    required User? user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isLoading: false,
        user: null,
        // user: FirebaseAuth.instance.currentUser,
      );
}
