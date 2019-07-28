import 'package:flutter/widgets.dart';
import 'package:prototype/utilities/static/static.dart';

class CircleButtonState{

  BoxDecoration decoration;
  Widget child;
  EdgeInsets padding;

  CircleButtonState._();

  factory CircleButtonState.initial(title){
    return CircleButtonState._()
      ..decoration = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: new Border.all(color:CustomColors.white(),width:3),
      )
      ..child = Directionality(
        textDirection: TextDirection.ltr,
        child: Text(title,
          style: TextStyle(
            fontSize: 20.0,
            color: CustomColors.white(),
          )
        )
      )
      ..padding = EdgeInsets.symmetric(
        horizontal: 15, 
        vertical: 5
      );
  }

  factory CircleButtonState.pressed(title){
    return CircleButtonState._()
      ..decoration = BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: new Border.all(color:CustomColors.red(),width:3),
      )
      ..child = Directionality(
        textDirection: TextDirection.ltr,
        child: Text(title,
          style: TextStyle(
            fontSize: 20.0,
            color: CustomColors.white(),
          )
        )
      )
      ..padding = EdgeInsets.symmetric(
        horizontal: 15, 
        vertical: 5
      );
  }
}