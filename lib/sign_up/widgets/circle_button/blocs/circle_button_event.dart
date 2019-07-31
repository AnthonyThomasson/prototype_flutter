import 'package:flutter/widgets.dart';

import 'blocks.dart';

abstract class CircleButtonEvent {}

class Pressed extends CircleButtonEvent {
  ActionCallback action;
  TapDownDetails context;
  Pressed(this.action,this.context);

  dispatchAction(){
    this.action(this.context);
  }
}
class Released extends CircleButtonEvent {}
