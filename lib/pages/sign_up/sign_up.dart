import 'package:flutter/material.dart';
import 'package:prototype/pages/sign_up/widgets/login_buttons.dart';
import 'package:prototype/pages/sign_up/widgets/social_buttons.dart';
import 'package:prototype/utilities/utilities.dart';

class SignUp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              CustomColors.darkBlue(),
              CustomColors.lightBlue(),
            ],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
          ),
        ),
        padding: EdgeInsets.all(0.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Welcome To Prototype',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.white(),
                    )
                  ),
                padding: EdgeInsets.only(bottom: 180),
              ),
              Container(
                margin: EdgeInsets.only(left: 50,right: 50),
                child: LoginButtons(),
              ),
              SocialLoginButtons()
            ],
          ),
        )
        ),
    );
  }
}