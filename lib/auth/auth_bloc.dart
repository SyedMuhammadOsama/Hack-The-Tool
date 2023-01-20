import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../services/auth_service.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService = AuthService();

  AuthBloc() : super(AuthState.initial()) {
    on<OnSignIn>((event, emit) => _onSignIn(event, emit));
    on<OnSignUp>((event, emit) => _onSignUp(event, emit));
  }

  void _onSignIn(AuthEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));

      UserCredential credential =
          await authService.signIn(event.email, event.password);
      emit(state.copyWith(user: credential.user));
    } catch (e) {
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _onSignUp(AuthEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));

      UserCredential credential =
          await authService.signUp(event.email, event.password);
      emit(state.copyWith(user: credential.user));
    } catch (e) {
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}
