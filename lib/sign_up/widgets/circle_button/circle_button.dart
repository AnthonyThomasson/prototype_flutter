import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/blocks.dart';

typedef ActionCallback = void Function(TapDownDetails context);

class CircleButton extends StatelessWidget{
  final String title;
  final ActionCallback action;
  final UiBloc _uiBloc = UiBloc();

  CircleButton({
    @required this.title,
    @required this.action,
  }): 
    assert(action != null),
    assert(title != null);

  @override
  Widget build(BuildContext context) {

      return BlocBuilder(
        bloc: _uiBloc,
        builder: (_, UiState state) {
          return GestureDetector(
            onTapDown:(context) {
              _uiBloc.dispatch(UiEvent.pressed);
              action(context);
            },
            onTapUp:(context) => _uiBloc.dispatch(UiEvent.released),
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