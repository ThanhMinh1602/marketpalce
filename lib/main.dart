import 'package:flutter/material.dart';
import 'package:marketpalce/screens/HomeScreens/home_main_screen.dart';
import 'package:marketpalce/screens/SearchScreens/main_search_screen.dart';
import 'package:marketpalce/screens/SplashScreens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
