import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import 'package:prototype/utilities/utilities.dart';
import 'sign_up_2.dart';

class SignUp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CustomColors.red(),
        padding: EdgeInsets.all(50.0),
        child: Center(
            child: CircleButton(
              title: '',
              action: (tapDownDetails){
                Navigator.push(context, SlideRightRoute(page: SignUp2()));
              },
            )
          )
        ),
    );
  }
}