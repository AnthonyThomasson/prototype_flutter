import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/blocks.dart';

typedef ActionCallback = void Function(TapDownDetails context);

class CircleButton extends StatelessWidget{

  final String title;
  final ActionCallback action;
  final CircleButtonBloc _circleButtonBloc = CircleButtonBloc();

  CircleButton({
    @required this.title,
    @required this.action,
  }): 
    assert(action != null),
    assert(title != null);

  @override
  Widget build(BuildContext context) {

      return BlocBuilder(
        bloc: _circleButtonBloc,
        builder: (_, CircleButtonState state) {
          return GestureDetector(
            onTapDown:(context) {
              _circleButtonBloc.dispatch(CircleButtonEvent.pressed);
              action(context);
            },
            onTapUp:(context) => _circleButtonBloc.dispatch(CircleButtonEvent.released),
            child: Container(
              padding: state.padding,
              decoration: state.decoration,
              child: state.child,
            )
          );
        },
      );
  }
}