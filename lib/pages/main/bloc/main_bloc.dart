import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:polus_hack/models/driver_request.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoadEvent>(_loadEvent);
  }

  Future<void> _loadEvent(LoadEvent event, Emitter emitter) async {
    emitter(LoadingState());
    await Future.delayed(Duration(seconds: 3)).then((value) => emitter(LoadedState([])));
  }
}
