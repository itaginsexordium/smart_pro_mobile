import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'navigator_event.dart';
part 'navigator_state.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorMainState> {
  NavigatorBloc() : super(NavigatorHome()) {
    on<AppStarted>(_appStarted);
    on<ChangePage>(_changePage);
  }
  Future<void> _appStarted(
      AppStarted event, Emitter<NavigatorMainState> emit) async {
    emit(NavigatorHome());
  }

  Future<void> _changePage(
      ChangePage event, Emitter<NavigatorMainState> emit) async {
    switch (event.index) {
      case 0:
        emit(NavigatorHome());
        break;
      case 1:
        emit(NavigatorCatalog());
        break;
      case 2:
        emit(NavigatorCart());
        break;
      case 3:
        emit(NavigatorProfile());
        break;
    }
  }
}
