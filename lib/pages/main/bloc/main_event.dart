part of 'main_bloc.dart';

@immutable
abstract class MainEvent extends Equatable{


  @override
  List<Object> get props => [];
}

class LoadEvent extends MainEvent{

}
