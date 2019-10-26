import 'package:flutter/material.dart';
import 'package:prototype/widgets/global_widgets.dart';
import 'package:prototype/utilities/utilities.dart';
import 'sign_up_2.dart';

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
                child: RoundButtonSolid(
                  title: 'Login',
                  action: (tapDownDetails){
                    Navigator.push(context, SlideRightRoute(page: SignUp2()));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 50,right: 50),
                child: RoundButton(
                  title: 'Register',
                  action: (tapDownDetails){
                    Navigator.push(context, SlideRightRoute(page: SignUp2()));
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                child: Text('Or Login with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: CustomColors.white(),
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 50,right: 50),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text('f',textAlign: TextAlign.center, style: TextStyle(fontSize: 60)),
                      color: Colors.white
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text('t',textAlign: TextAlign.center, style: TextStyle(fontSize: 60)),
                      color: Colors.white
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text('g',textAlign: TextAlign.center, style: TextStyle(fontSize: 60)),
                      color: Colors.white
                    ),
                  ),
                ],),
              )
            ],
          ),
        )
        ),
    );
  }
}