library round_button_solid;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/blocks.dart';

typedef _ActionCallback = void Function(TapDownDetails context);

class RoundButtonSolid extends StatefulWidget{

  final title;
  final _ActionCallback action;

  RoundButtonSolid({
    @required this.title,
    @required this.action,
  }):
    assert(action != null),
    assert(title != null);

  @override
  State<StatefulWidget> createState() => _RoundButtonSolidState(
    title: this.title, 
    action: this.action
  );
}

class _RoundButtonSolidState extends State<RoundButtonSolid> {

  RoundButtonBloc _roundButtonBloc;
  final _ActionCallback action;
  
  _RoundButtonSolidState({
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