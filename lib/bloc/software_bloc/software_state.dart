part of 'software_bloc.dart';

@freezed
class SoftwareState with _$SoftwareState {
  factory SoftwareState({
    required bool isLoading,
    required List<Software> softwareList,
    required Software? currentSoftware,
  }) = _SoftwareState;

  factory SoftwareState.initial() =>
      SoftwareState(isLoading: false, softwareList: [], currentSoftware: null
          // user: FirebaseAuth.instance.currentUser,
          );
}
