import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/blocks.dart';

typedef ActionCallback = void Function(TapDownDetails context);

class CircleButton extends StatefulWidget{

  final title;
  final ActionCallback action;

  CircleButton({
    @required this.title,
    @required this.action,
  }):
    assert(action != null),
    assert(title != null);

  @override
  State<StatefulWidget> createState() => _CircleButtonState(
    title: this.title, 
    action: this.action
  );
}

class _CircleButtonState extends State<CircleButton> {

  CircleButtonBloc _circleButtonBloc;
  final ActionCallback action;
  
  _CircleButtonState({
    @required title,
    @required this.action,
  }):
    assert(action != null),
    assert(title != null){
      _circleButtonBloc = CircleButtonBloc(title: title, action: this.action);
    }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _circleButtonBloc,
      builder: (_, CircleButtonUiState state) {
        return GestureDetector(
          onTapDown:(context) {
            _circleButtonBloc.dispatch(Pressed(this.action,context));
          },
          onTapUp:(context) => _circleButtonBloc.dispatch(Released()),
          child: Container(
            padding: state.padding,
            decoration: state.decoration,
            child: state.child,
          )
        );
      }
    );
  }

  // @override
  // void dispose() {
  //   _circleButtonBloc.dispose();
  //   super.dispose();
  // }
}