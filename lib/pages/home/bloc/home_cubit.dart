import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial(0));

  Future<void> setPageIndex(int newIndex) async {
    emit(HomeInitial(newIndex));
  }
}
