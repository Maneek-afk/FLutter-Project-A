import 'package:flutter/material.dart';
class MyTextfield extends StatelessWidget {
  final TextEditingController aController;
  final String  hintText;
  final  bool obscureText;


  const  MyTextfield({
    Key? key,
    required this.aController,
    required this.hintText,
    required this.obscureText

  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: TextField(

                  controller: aController,
                  obscureText: obscureText,
                  
                  decoration:  InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide:   BorderSide(color: Color.fromARGB(255, 187, 186, 186))
                    ),
                    focusedBorder:const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    fillColor:const Color.fromARGB(255, 231, 231, 231),
                    filled: true,
                    hintText: hintText,
                    
                  ),
                ),
              );
  }
}