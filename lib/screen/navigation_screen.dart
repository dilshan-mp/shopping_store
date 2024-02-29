import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/screen/Profile_screen.dart';
import 'package:shopping_store/screen/cart_screen.dart';
import 'package:shopping_store/screen/favorit_screen.dart';
import 'package:shopping_store/screen/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}