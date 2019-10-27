import 'package:flutter/material.dart';
import 'package:prototype/utilities/static/colors.dart';

class LoginButtons extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: MaterialButton(
               padding: EdgeInsets.symmetric(
                horizontal: 30, 
                vertical: 15
              ),
              color: Colors.white,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(
                  width: 1,
                  color: Colors.white
                )
              ),
              child: Text("Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: CustomColors.darkBlue(),
                )
              ),
              onPressed: () {},
              ),
          ),
        ),
        Theme(
          data: ThemeData(
            splashColor: Colors.white,
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: MaterialButton(
                 padding: EdgeInsets.symmetric(
                  horizontal: 30, 
                  vertical: 15
                ),
                elevation: 0.5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                    width: 1,
                    color: Colors.white
                  )
                ),
                child: Text("Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  )
                ),
                onPressed: () {},
                ),
            ),
          ),
        ),
      ],
    );
  }

}