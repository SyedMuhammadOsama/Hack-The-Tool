part of 'software_bloc.dart';

@freezed
class SoftwareEvent with _$SoftwareEvent {
  factory SoftwareEvent.onGetAllSoftware(List<Software> softwareList) =
      OnGetAllSoftware;
  factory SoftwareEvent.onGetSingleSoftware(Software currentSoftware) =
      OnGetSingleSoftware;
}
