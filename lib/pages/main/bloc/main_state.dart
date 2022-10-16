part of 'main_bloc.dart';

@immutable
abstract class MainState extends Equatable {

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState {}

class LoadingState extends MainState {}

class LoadedState extends MainState {
  List<DriverRequest> todayRequests;

  LoadedState(this.todayRequests);
}