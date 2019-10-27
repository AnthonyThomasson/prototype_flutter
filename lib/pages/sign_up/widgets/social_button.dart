import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget{

  final String text;
  SocialButton(this.text);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
          aspectRatio: 1/0.8,
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 10),
            child: Theme( 
              data: ThemeData(
                splashColor: Colors.white,
              ),
              child: MaterialButton(
                  padding: EdgeInsets.only(top: 16,bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(
                      width: 1,
                      color: Colors.white
                    )
                  ),
                  child: Container(
                      child: Text(text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {},
              )
            ),
      ),
    );
  }

}