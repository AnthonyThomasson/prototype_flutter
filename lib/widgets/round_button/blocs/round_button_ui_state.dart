import 'package:flutter/widgets.dart';
import 'package:prototype/utilities/static/static.dart';

class RoundButtonUiState{
  ConstrainedBox child;

  RoundButtonUiState._();

  factory RoundButtonUiState.initial(title){
    return RoundButtonUiState._()
      ..child = ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30, 
            vertical: 15
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(color:CustomColors.white(),width:1),
          ),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: CustomColors.white(),
              )
            )
          )
        )
      );
  }

  factory RoundButtonUiState.pressed(title){
    return RoundButtonUiState._()
      ..child = ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15, 
            vertical: 5
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border: new Border.all(color:CustomColors.darkBlue(),width:3),
          ),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Text(title,
              style: TextStyle(
                fontSize: 20.0,
                color: CustomColors.white(),
              )
            )
          )
        )
      );
  }
}