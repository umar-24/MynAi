import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myn_ai/constatns/app_images.dart';

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
           SizedBox(
            width: double.infinity,
             child: OutlinedButton(
               onPressed: () {
                 // Add your onPressed functionality here
               },
               style: OutlinedButton.styleFrom(
                 foregroundColor: Colors.white, // Text color
                 side: const BorderSide(color: Colors.white, width: 2), // Border color and width
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12), // Rounded corners
                 ),
                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Button padding
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Image.asset(AppImages.emailIcon, height: 30,color: Colors.white,),
                  const SizedBox(width: 20,),
                   const Text(
                     "Login with Email",
                     style: TextStyle(
                       fontSize: 16, // Text size
                       fontWeight: FontWeight.bold, // Text weight
                     ),
                   ),
                 ],
               ),
             ),
           ),
        
              
          ],
        ),
      ),
    );
  }
}