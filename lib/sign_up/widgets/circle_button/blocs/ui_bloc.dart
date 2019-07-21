import 'package:bloc/bloc.dart';
import 'ui_state.dart';


enum UiEvent { pressed,released }

class UiBloc extends Bloc<UiEvent, UiState> {

  @override
  UiState get initialState => UiState.initial();

  @override
  Stream<UiState> mapEventToState(UiEvent event) async* {
    switch (event) {
      case UiEvent.pressed:
        yield UiState.pressed();
        break;
      case UiEvent.released:
        yield UiState.initial();
        break;
    }
  }
}