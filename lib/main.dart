import 'package:flutter/widgets.dart';
import 'sign_up/sign_up.dart';
import 'utilities/utilities.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    
    Navigator.push(
      context,
      SlideRightRoute(page: SignUp()),
    );
    
    return SignUp();
  }
}
