// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSignIn,
    required TResult Function(String email, String password) onSignUp,
    required TResult Function() onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSignIn,
    TResult? Function(String email, String password)? onSignUp,
    TResult? Function()? onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSignIn,
    TResult Function(String email, String password)? onSignUp,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSignIn value) onSignIn,
    required TResult Function(OnSignUp value) onSignUp,
    required TResult Function(OnLogout value) onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSignIn value)? onSignIn,
    TResult? Function(OnSignUp value)? onSignUp,
    TResult? Function(OnLogout value)? onLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSignIn value)? onSignIn,
    TResult Function(OnSignUp value)? onSignUp,
    TResult Function(OnLogout value)? onLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnSignInCopyWith<$Res> {
  factory _$$OnSignInCopyWith(
          _$OnSignIn value, $Res Function(_$OnSignIn) then) =
      __$$OnSignInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$OnSignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnSignIn>
    implements _$$OnSignInCopyWith<$Res> {
  __$$OnSignInCopyWithImpl(_$OnSignIn _value, $Res Function(_$OnSignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$OnSignIn(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSignIn implements OnSignIn {
  _$OnSignIn(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onSignIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSignInCopyWith<_$OnSignIn> get copyWith =>
      __$$OnSignInCopyWithImpl<_$OnSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSignIn,
    required TResult Function(String email, String password) onSignUp,
    required TResult Function() onLogout,
  }) {
    return onSignIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSignIn,
    TResult? Function(String email, String password)? onSignUp,
    TResult? Function()? onLogout,
  }) {
    return onSignIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSignIn,
    TResult Function(String email, String password)? onSignUp,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) {
    if (onSignIn != null) {
      return onSignIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSignIn value) onSignIn,
    required TResult Function(OnSignUp value) onSignUp,
    required TResult Function(OnLogout value) onLogout,
  }) {
    return onSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSignIn value)? onSignIn,
    TResult? Function(OnSignUp value)? onSignUp,
    TResult? Function(OnLogout value)? onLogout,
  }) {
    return onSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSignIn value)? onSignIn,
    TResult Function(OnSignUp value)? onSignUp,
    TResult Function(OnLogout value)? onLogout,
    required TResult orElse(),
  }) {
    if (onSignIn != null) {
      return onSignIn(this);
    }
    return orElse();
  }
}

abstract class OnSignIn implements AuthEvent {
  factory OnSignIn(final String email, final String password) = _$OnSignIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$OnSignInCopyWith<_$OnSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSignUpCopyWith<$Res> {
  factory _$$OnSignUpCopyWith(
          _$OnSignUp value, $Res Function(_$OnSignUp) then) =
      __$$OnSignUpCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$OnSignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnSignUp>
    implements _$$OnSignUpCopyWith<$Res> {
  __$$OnSignUpCopyWithImpl(_$OnSignUp _value, $Res Function(_$OnSignUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$OnSignUp(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSignUp implements OnSignUp {
  _$OnSignUp(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onSignUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSignUp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSignUpCopyWith<_$OnSignUp> get copyWith =>
      __$$OnSignUpCopyWithImpl<_$OnSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSignIn,
    required TResult Function(String email, String password) onSignUp,
    required TResult Function() onLogout,
  }) {
    return onSignUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSignIn,
    TResult? Function(String email, String password)? onSignUp,
    TResult? Function()? onLogout,
  }) {
    return onSignUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSignIn,
    TResult Function(String email, String password)? onSignUp,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSignIn value) onSignIn,
    required TResult Function(OnSignUp value) onSignUp,
    required TResult Function(OnLogout value) onLogout,
  }) {
    return onSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSignIn value)? onSignIn,
    TResult? Function(OnSignUp value)? onSignUp,
    TResult? Function(OnLogout value)? onLogout,
  }) {
    return onSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSignIn value)? onSignIn,
    TResult Function(OnSignUp value)? onSignUp,
    TResult Function(OnLogout value)? onLogout,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp(this);
    }
    return orElse();
  }
}

abstract class OnSignUp implements AuthEvent {
  factory OnSignUp(final String email, final String password) = _$OnSignUp;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$OnSignUpCopyWith<_$OnSignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLogoutCopyWith<$Res> {
  factory _$$OnLogoutCopyWith(
          _$OnLogout value, $Res Function(_$OnLogout) then) =
      __$$OnLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnLogout>
    implements _$$OnLogoutCopyWith<$Res> {
  __$$OnLogoutCopyWithImpl(_$OnLogout _value, $Res Function(_$OnLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLogout implements OnLogout {
  _$OnLogout();

  @override
  String toString() {
    return 'AuthEvent.onLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSignIn,
    required TResult Function(String email, String password) onSignUp,
    required TResult Function() onLogout,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSignIn,
    TResult? Function(String email, String password)? onSignUp,
    TResult? Function()? onLogout,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSignIn,
    TResult Function(String email, String password)? onSignUp,
    TResult Function()? onLogout,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSignIn value) onSignIn,
    required TResult Function(OnSignUp value) onSignUp,
    required TResult Function(OnLogout value) onLogout,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnSignIn value)? onSignIn,
    TResult? Function(OnSignUp value)? onSignUp,
    TResult? Function(OnLogout value)? onLogout,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSignIn value)? onSignIn,
    TResult Function(OnSignUp value)? onSignUp,
    TResult Function(OnLogout value)? onLogout,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class OnLogout implements AuthEvent {
  factory OnLogout() = _$OnLogout;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isLoading, User? user});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, User? user});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  _$_AuthState({required this.isLoading, required this.user});

  @override
  final bool isLoading;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {required final bool isLoading,
      required final User? user}) = _$_AuthState;

  @override
  bool get isLoading;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
