library round_button;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/blocks.dart';

typedef ActionCallback = void Function(TapDownDetails context);

class RoundButton extends StatefulWidget{

  final title;
  final ActionCallback action;

  RoundButton({
    @required this.title,
    @required this.action,
  }):
    assert(action != null),
    assert(title != null);

  @override
  State<StatefulWidget> createState() => _RoundButtonState(
    title: this.title, 
    action: this.action
  );
}

class _RoundButtonState extends State<RoundButton> {

  RoundButtonBloc _roundButtonBloc;
  final ActionCallback action;
  
  _RoundButtonState({
    @required title,
    @required this.action,
  }):
    assert(action != null),
    assert(title != null){
      _roundButtonBloc = RoundButtonBloc(title: title, action: this.action);
    }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _roundButtonBloc,
      builder: (_, RoundButtonUiState state) {
        return GestureDetector(
          onTapDown:(context) {
            _roundButtonBloc.dispatch(Pressed(this.action,context));
          },
          onTapUp:(context) => _roundButtonBloc.dispatch(Released()),
          child: state.child
        );
      }
    );
  }
}