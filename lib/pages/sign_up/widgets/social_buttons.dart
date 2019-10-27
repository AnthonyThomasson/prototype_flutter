import 'package:flutter/material.dart';
import 'package:prototype/pages/sign_up/widgets/social_button.dart';
import 'package:prototype/utilities/static/colors.dart';

class SocialLoginButtons extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
              child: SocialButton('f'),
            ),
            Expanded(
              child: SocialButton('G'),
            ),
            Expanded(
              child: SocialButton('t'),
            ),
          ]),
        ),
      ],
    );
  }

}