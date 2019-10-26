import 'package:bloc/bloc.dart';
import 'round_button_solid_ui_state.dart';
import 'package:flutter/widgets.dart';
import 'round_button_solid_event.dart';

typedef ActionCallback = void Function(TapDownDetails context);

class RoundButtonBloc extends Bloc<RoundButtonEvent, RoundButtonUiState> {
  
  final String title;
  final ActionCallback action;

  RoundButtonBloc({this.title, this.action});

  @override
  RoundButtonUiState get initialState => RoundButtonUiState.initial(this.title);

  @override
  Stream<RoundButtonUiState> mapEventToState(RoundButtonEvent event) async* {
    
    if (event is Released) {
      yield RoundButtonUiState.initial(this.title);
    } else if (event is Pressed) {
      event.dispatchAction();
      yield RoundButtonUiState.pressed(this.title);
    }
  }
}