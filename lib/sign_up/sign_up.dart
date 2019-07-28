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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('(Loading UI)'),
                padding: EdgeInsets.only(bottom: 300),
              ),
              Container(
                child: CircleButton(
                  title: 'Sign in with Facebook',
                  action: (tapDownDetails){
                    Navigator.push(context, SlideRightRoute(page: SignUp2()));
                  },
                ),
              ),
            ],
          ),
        )
        ),
    );
  }
}