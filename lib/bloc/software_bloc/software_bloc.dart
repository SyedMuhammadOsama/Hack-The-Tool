import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_the_tool/models/software.dart';

import '../../services/software_service.dart';

part 'software_bloc.freezed.dart';
part 'software_event.dart';
part 'software_state.dart';

class SoftwareBloc extends Bloc<SoftwareEvent, SoftwareState> {
  StreamSubscription? softwareStream;
  SoftwareService softwareService = SoftwareService();

  SoftwareBloc() : super(SoftwareState.initial()) {
    softwareStream = softwareService.allSoftwareStream().listen((softwareList) {
      add(SoftwareEvent.onGetAllSoftware(softwareList));
    });

    on<OnGetAllSoftware>(
        (event, emit) async => await _onGetAllSoftware(event, emit));
    on<OnGetSingleSoftware>(
        (event, emit) async => await _onGetSingleSoftware(event, emit));
  }

  Future<void> _onGetAllSoftware(OnGetAllSoftware event, Emitter emit) async {
    emit(state.copyWith(softwareList: event.softwareList));
  }

  Future<void> _onGetSingleSoftware(
      OnGetSingleSoftware event, Emitter emit) async {
    emit(state.copyWith(currentSoftware: event.currentSoftware));
  }
}
