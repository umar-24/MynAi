import 'package:flutter/material.dart';
import 'package:myn_ai/screen/auth/auth_selection.dart';


class SplashProvider with ChangeNotifier {
  
  void navigateToLogin(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AuthSelection()),
      );
    });
  }
}