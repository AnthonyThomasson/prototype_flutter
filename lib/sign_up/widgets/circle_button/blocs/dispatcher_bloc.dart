import 'package:bloc/bloc.dart';
import 'ui_state.dart';


enum DispatcherEvent { actionTriggered }

class DispatcherBloc extends Bloc<DispatcherEvent, UiState> {

  @override
  UiState get initialState => UiState.initial();

  @override
  Stream<UiState> mapEventToState(DispatcherEvent event) async* {
    switch (event) {
      case DispatcherEvent.actionTriggered:
        
        break;
    }
  }
}