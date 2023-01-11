// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'software_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SoftwareEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Software> softwareList) onGetAllSoftware,
    required TResult Function(Software currentSoftware) onGetSingleSoftware,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Software> softwareList)? onGetAllSoftware,
    TResult? Function(Software currentSoftware)? onGetSingleSoftware,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Software> softwareList)? onGetAllSoftware,
    TResult Function(Software currentSoftware)? onGetSingleSoftware,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetAllSoftware value) onGetAllSoftware,
    required TResult Function(OnGetSingleSoftware value) onGetSingleSoftware,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetAllSoftware value)? onGetAllSoftware,
    TResult? Function(OnGetSingleSoftware value)? onGetSingleSoftware,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetAllSoftware value)? onGetAllSoftware,
    TResult Function(OnGetSingleSoftware value)? onGetSingleSoftware,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoftwareEventCopyWith<$Res> {
  factory $SoftwareEventCopyWith(
          SoftwareEvent value, $Res Function(SoftwareEvent) then) =
      _$SoftwareEventCopyWithImpl<$Res, SoftwareEvent>;
}

/// @nodoc
class _$SoftwareEventCopyWithImpl<$Res, $Val extends SoftwareEvent>
    implements $SoftwareEventCopyWith<$Res> {
  _$SoftwareEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetAllSoftwareCopyWith<$Res> {
  factory _$$OnGetAllSoftwareCopyWith(
          _$OnGetAllSoftware value, $Res Function(_$OnGetAllSoftware) then) =
      __$$OnGetAllSoftwareCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Software> softwareList});
}

/// @nodoc
class __$$OnGetAllSoftwareCopyWithImpl<$Res>
    extends _$SoftwareEventCopyWithImpl<$Res, _$OnGetAllSoftware>
    implements _$$OnGetAllSoftwareCopyWith<$Res> {
  __$$OnGetAllSoftwareCopyWithImpl(
      _$OnGetAllSoftware _value, $Res Function(_$OnGetAllSoftware) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? softwareList = null,
  }) {
    return _then(_$OnGetAllSoftware(
      null == softwareList
          ? _value._softwareList
          : softwareList // ignore: cast_nullable_to_non_nullable
              as List<Software>,
    ));
  }
}

/// @nodoc

class _$OnGetAllSoftware implements OnGetAllSoftware {
  _$OnGetAllSoftware(final List<Software> softwareList)
      : _softwareList = softwareList;

  final List<Software> _softwareList;
  @override
  List<Software> get softwareList {
    if (_softwareList is EqualUnmodifiableListView) return _softwareList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_softwareList);
  }

  @override
  String toString() {
    return 'SoftwareEvent.onGetAllSoftware(softwareList: $softwareList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetAllSoftware &&
            const DeepCollectionEquality()
                .equals(other._softwareList, _softwareList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_softwareList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetAllSoftwareCopyWith<_$OnGetAllSoftware> get copyWith =>
      __$$OnGetAllSoftwareCopyWithImpl<_$OnGetAllSoftware>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Software> softwareList) onGetAllSoftware,
    required TResult Function(Software currentSoftware) onGetSingleSoftware,
  }) {
    return onGetAllSoftware(softwareList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Software> softwareList)? onGetAllSoftware,
    TResult? Function(Software currentSoftware)? onGetSingleSoftware,
  }) {
    return onGetAllSoftware?.call(softwareList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Software> softwareList)? onGetAllSoftware,
    TResult Function(Software currentSoftware)? onGetSingleSoftware,
    required TResult orElse(),
  }) {
    if (onGetAllSoftware != null) {
      return onGetAllSoftware(softwareList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetAllSoftware value) onGetAllSoftware,
    required TResult Function(OnGetSingleSoftware value) onGetSingleSoftware,
  }) {
    return onGetAllSoftware(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetAllSoftware value)? onGetAllSoftware,
    TResult? Function(OnGetSingleSoftware value)? onGetSingleSoftware,
  }) {
    return onGetAllSoftware?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetAllSoftware value)? onGetAllSoftware,
    TResult Function(OnGetSingleSoftware value)? onGetSingleSoftware,
    required TResult orElse(),
  }) {
    if (onGetAllSoftware != null) {
      return onGetAllSoftware(this);
    }
    return orElse();
  }
}

abstract class OnGetAllSoftware implements SoftwareEvent {
  factory OnGetAllSoftware(final List<Software> softwareList) =
      _$OnGetAllSoftware;

  List<Software> get softwareList;
  @JsonKey(ignore: true)
  _$$OnGetAllSoftwareCopyWith<_$OnGetAllSoftware> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetSingleSoftwareCopyWith<$Res> {
  factory _$$OnGetSingleSoftwareCopyWith(_$OnGetSingleSoftware value,
          $Res Function(_$OnGetSingleSoftware) then) =
      __$$OnGetSingleSoftwareCopyWithImpl<$Res>;
  @useResult
  $Res call({Software currentSoftware});
}

/// @nodoc
class __$$OnGetSingleSoftwareCopyWithImpl<$Res>
    extends _$SoftwareEventCopyWithImpl<$Res, _$OnGetSingleSoftware>
    implements _$$OnGetSingleSoftwareCopyWith<$Res> {
  __$$OnGetSingleSoftwareCopyWithImpl(
      _$OnGetSingleSoftware _value, $Res Function(_$OnGetSingleSoftware) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSoftware = null,
  }) {
    return _then(_$OnGetSingleSoftware(
      null == currentSoftware
          ? _value.currentSoftware
          : currentSoftware // ignore: cast_nullable_to_non_nullable
              as Software,
    ));
  }
}

/// @nodoc

class _$OnGetSingleSoftware implements OnGetSingleSoftware {
  _$OnGetSingleSoftware(this.currentSoftware);

  @override
  final Software currentSoftware;

  @override
  String toString() {
    return 'SoftwareEvent.onGetSingleSoftware(currentSoftware: $currentSoftware)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetSingleSoftware &&
            (identical(other.currentSoftware, currentSoftware) ||
                other.currentSoftware == currentSoftware));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentSoftware);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetSingleSoftwareCopyWith<_$OnGetSingleSoftware> get copyWith =>
      __$$OnGetSingleSoftwareCopyWithImpl<_$OnGetSingleSoftware>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Software> softwareList) onGetAllSoftware,
    required TResult Function(Software currentSoftware) onGetSingleSoftware,
  }) {
    return onGetSingleSoftware(currentSoftware);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Software> softwareList)? onGetAllSoftware,
    TResult? Function(Software currentSoftware)? onGetSingleSoftware,
  }) {
    return onGetSingleSoftware?.call(currentSoftware);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Software> softwareList)? onGetAllSoftware,
    TResult Function(Software currentSoftware)? onGetSingleSoftware,
    required TResult orElse(),
  }) {
    if (onGetSingleSoftware != null) {
      return onGetSingleSoftware(currentSoftware);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetAllSoftware value) onGetAllSoftware,
    required TResult Function(OnGetSingleSoftware value) onGetSingleSoftware,
  }) {
    return onGetSingleSoftware(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetAllSoftware value)? onGetAllSoftware,
    TResult? Function(OnGetSingleSoftware value)? onGetSingleSoftware,
  }) {
    return onGetSingleSoftware?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetAllSoftware value)? onGetAllSoftware,
    TResult Function(OnGetSingleSoftware value)? onGetSingleSoftware,
    required TResult orElse(),
  }) {
    if (onGetSingleSoftware != null) {
      return onGetSingleSoftware(this);
    }
    return orElse();
  }
}

abstract class OnGetSingleSoftware implements SoftwareEvent {
  factory OnGetSingleSoftware(final Software currentSoftware) =
      _$OnGetSingleSoftware;

  Software get currentSoftware;
  @JsonKey(ignore: true)
  _$$OnGetSingleSoftwareCopyWith<_$OnGetSingleSoftware> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SoftwareState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Software> get softwareList => throw _privateConstructorUsedError;
  Software? get currentSoftware => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SoftwareStateCopyWith<SoftwareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoftwareStateCopyWith<$Res> {
  factory $SoftwareStateCopyWith(
          SoftwareState value, $Res Function(SoftwareState) then) =
      _$SoftwareStateCopyWithImpl<$Res, SoftwareState>;
  @useResult
  $Res call(
      {bool isLoading, List<Software> softwareList, Software? currentSoftware});
}

/// @nodoc
class _$SoftwareStateCopyWithImpl<$Res, $Val extends SoftwareState>
    implements $SoftwareStateCopyWith<$Res> {
  _$SoftwareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? softwareList = null,
    Object? currentSoftware = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      softwareList: null == softwareList
          ? _value.softwareList
          : softwareList // ignore: cast_nullable_to_non_nullable
              as List<Software>,
      currentSoftware: freezed == currentSoftware
          ? _value.currentSoftware
          : currentSoftware // ignore: cast_nullable_to_non_nullable
              as Software?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SoftwareStateCopyWith<$Res>
    implements $SoftwareStateCopyWith<$Res> {
  factory _$$_SoftwareStateCopyWith(
          _$_SoftwareState value, $Res Function(_$_SoftwareState) then) =
      __$$_SoftwareStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<Software> softwareList, Software? currentSoftware});
}

/// @nodoc
class __$$_SoftwareStateCopyWithImpl<$Res>
    extends _$SoftwareStateCopyWithImpl<$Res, _$_SoftwareState>
    implements _$$_SoftwareStateCopyWith<$Res> {
  __$$_SoftwareStateCopyWithImpl(
      _$_SoftwareState _value, $Res Function(_$_SoftwareState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? softwareList = null,
    Object? currentSoftware = freezed,
  }) {
    return _then(_$_SoftwareState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      softwareList: null == softwareList
          ? _value._softwareList
          : softwareList // ignore: cast_nullable_to_non_nullable
              as List<Software>,
      currentSoftware: freezed == currentSoftware
          ? _value.currentSoftware
          : currentSoftware // ignore: cast_nullable_to_non_nullable
              as Software?,
    ));
  }
}

/// @nodoc

class _$_SoftwareState implements _SoftwareState {
  _$_SoftwareState(
      {required this.isLoading,
      required final List<Software> softwareList,
      required this.currentSoftware})
      : _softwareList = softwareList;

  @override
  final bool isLoading;
  final List<Software> _softwareList;
  @override
  List<Software> get softwareList {
    if (_softwareList is EqualUnmodifiableListView) return _softwareList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_softwareList);
  }

  @override
  final Software? currentSoftware;

  @override
  String toString() {
    return 'SoftwareState(isLoading: $isLoading, softwareList: $softwareList, currentSoftware: $currentSoftware)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SoftwareState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._softwareList, _softwareList) &&
            (identical(other.currentSoftware, currentSoftware) ||
                other.currentSoftware == currentSoftware));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_softwareList), currentSoftware);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SoftwareStateCopyWith<_$_SoftwareState> get copyWith =>
      __$$_SoftwareStateCopyWithImpl<_$_SoftwareState>(this, _$identity);
}

abstract class _SoftwareState implements SoftwareState {
  factory _SoftwareState(
      {required final bool isLoading,
      required final List<Software> softwareList,
      required final Software? currentSoftware}) = _$_SoftwareState;

  @override
  bool get isLoading;
  @override
  List<Software> get softwareList;
  @override
  Software? get currentSoftware;
  @override
  @JsonKey(ignore: true)
  _$$_SoftwareStateCopyWith<_$_SoftwareState> get copyWith =>
      throw _privateConstructorUsedError;
}
