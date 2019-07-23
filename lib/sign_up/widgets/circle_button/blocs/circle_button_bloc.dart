import 'package:bloc/bloc.dart';
import 'circle_button_state.dart';


enum CircleButtonEvent { pressed,released }

class CircleButtonBloc extends Bloc<CircleButtonEvent, CircleButtonState> {

  @override
  CircleButtonState get initialState => CircleButtonState.initial();

  @override
  Stream<CircleButtonState> mapEventToState(CircleButtonEvent event) async* {
    switch (event) {
      case CircleButtonEvent.pressed:
        yield CircleButtonState.pressed();
        break;
      case CircleButtonEvent.released:
        yield CircleButtonState.initial();
        break;
    }
  }
}