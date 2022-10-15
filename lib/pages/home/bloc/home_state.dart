part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  final int pageIndex;

  const HomeState(this.pageIndex);

  @override
  List<Object> get props => [pageIndex];
}

class HomeInitial extends HomeState {
  const HomeInitial(int pageIndex) : super(pageIndex);
}
