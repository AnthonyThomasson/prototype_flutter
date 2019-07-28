import 'package:bloc/bloc.dart';
import 'circle_button_state.dart';
import 'package:flutter/widgets.dart';


enum CircleButtonEvent { pressed,released }

typedef ActionCallback = void Function(TapDownDetails context);

class CircleButtonBloc extends Bloc<CircleButtonEvent, CircleButtonState> {
  
  final String title;
  final ActionCallback action;

  CircleButtonBloc({this.title, this.action});

  @override
  CircleButtonState get initialState => CircleButtonState.initial(this.title);

  @override
  Stream<CircleButtonState> mapEventToState(CircleButtonEvent event) async* {
    switch (event) {
      case CircleButtonEvent.pressed:
        yield CircleButtonState.pressed(this.title);
        break;
      case CircleButtonEvent.released:
        yield CircleButtonState.initial(this.title);
        break;
    }
  }
}