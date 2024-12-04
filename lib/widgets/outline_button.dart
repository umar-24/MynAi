import 'package:flutter/material.dart';
import 'package:myn_ai/constatns/app_images.dart';

class MyOutlineButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double radius;
  final Widget icon;
  const MyOutlineButtons({super.key, required this.text, required this.onPressed, required this.color, required this.textColor, required this.radius, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: double.infinity,
             child: OutlinedButton(
               onPressed:onPressed,
               style: OutlinedButton.styleFrom(
                 foregroundColor: textColor, // Text color
                 side:  BorderSide(color: color, width: 2), // Border color and width
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(radius), // Rounded corners
                 ),
                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Button padding
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Container(
                    child: icon,
                  ),
                  const SizedBox(width: 20,),
                    Text(
                     text,
                     style: TextStyle(
                       fontSize: 16, // Text size
                       fontWeight: FontWeight.bold, // Text weight
                     ),
                   ),
                 ],
               ),
             ),
           );
  }
}