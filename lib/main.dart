import 'package:flutter/material.dart';
import 'package:myn_ai/provider/splash_provider.dart';
import 'package:myn_ai/screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers: [
       ChangeNotifierProvider(create: (_) => SplashProvider()),
    ],
    child: MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    ),
    );
  }
}