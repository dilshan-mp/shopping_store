 import 'package:flutter/material.dart';
import 'package:shopping_store/screen/Signup_screen.dart';
import 'package:shopping_store/screen/login_screen.dart';
import 'package:shopping_store/screen/navigation_screen.dart';
import 'package:shopping_store/screen/onboarding_screen.dart';
import 'package:shopping_store/screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Ecommerce shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:const Color(0xFFEF6969),
      ),
      home:NavigationScreen(),
      
    );
  }
}
