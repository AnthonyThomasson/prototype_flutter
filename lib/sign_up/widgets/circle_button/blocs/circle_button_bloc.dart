import 'package:bloc/bloc.dart';
import 'circle_button_ui_state.dart';
import 'package:flutter/widgets.dart';
import 'circle_button_event.dart';

typedef ActionCallback = void Function(TapDownDetails context);

class CircleButtonBloc extends Bloc<CircleButtonEvent, CircleButtonUiState> {
  
  final String title;
  final ActionCallback action;

  CircleButtonBloc({this.title, this.action});

  @override
  CircleButtonUiState get initialState => CircleButtonUiState.initial(this.title);

  @override
  Stream<CircleButtonUiState> mapEventToState(CircleButtonEvent event) async* {
    
    if (event is Released) {
      yield CircleButtonUiState.initial(this.title);
    } else if (event is Pressed) {
      event.dispatchAction();
      yield CircleButtonUiState.pressed(this.title);
    }
  }
}