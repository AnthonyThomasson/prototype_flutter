import 'package:flutter/widgets.dart';

import 'blocks.dart';

abstract class RoundButtonEvent {}

class Pressed extends RoundButtonEvent {
  ActionCallback action;
  TapDownDetails context;
  Pressed(this.action,this.context);

  dispatchAction(){
    this.action(this.context);
  }
}
class Released extends RoundButtonEvent {}
