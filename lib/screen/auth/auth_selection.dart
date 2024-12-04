import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myn_ai/constatns/app_images.dart';
import 'package:myn_ai/widgets/outline_button.dart';

class AuthSelection extends StatefulWidget {
  const AuthSelection({super.key});

  @override
  State<AuthSelection> createState() => _AuthSelectionState();
}

class _AuthSelectionState extends State<AuthSelection> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(AppImages.animation1),
            const SizedBox(
              height: 20,
            ),
            const Text("Welcome to MYN AI", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            const Text("Choose Your Login Option", style: TextStyle(fontSize: 18,),),
            const SizedBox(
              height: 20,
            ),
           MyOutlineButtons(text: "Login With Email", onPressed: (){}, color: Colors.white, textColor: Colors.white, radius: 12, icon: Image.asset(AppImages.emailIcon, height: 30,color: Colors.white,),),
           const SizedBox(height: 20,),
           MyOutlineButtons(text: "Login With Google", onPressed: (){}, color: Colors.white, textColor: Colors.white, radius: 12, icon: Image.asset(AppImages.googleLogo, height: 30),),
        
              
          ],
        ),
      ),
    );
  }
}