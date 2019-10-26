import 'package:flutter/material.dart';
import 'pages/sign_up/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
   
    return MaterialApp(
      title: 'Prototype',
      home: SignUp()
    );
  }
}