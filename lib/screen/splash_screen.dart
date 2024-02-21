import 'dart:async';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shopping_store/screen/home_screen.dart';
import 'package:shopping_store/screen/onboarding_screen.dart';

// ignore: camel_case_types
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=>Navigator.push(
         context as BuildContext,
         MaterialPageRoute(
            builder:(context)=>OnboardingScreen(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage("assets/images/image2.jpg"),
          fit: BoxFit.cover,
          opacity: 0.4,
          )
        ) ,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 250,
              color: Color.fromARGB(255, 238, 80, 80),
            ),
            Text(
              "DP SHOP",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),

            )
          ],
        )
      ),
    );
  }
}