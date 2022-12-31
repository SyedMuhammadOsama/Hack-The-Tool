import 'package:flutter/material.dart';
import 'package:hack_the_tool/screens/detail_screen.dart';
import 'package:hack_the_tool/screens/home_screen.dart';
import 'package:hack_the_tool/screens/signin_screen.dart';
import 'package:hack_the_tool/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 176, 101, 189),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: SignInScreen(),
      routes: {
        SignInScreen.routeName: (context) => SignInScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        DetailScreen.routeName: (context) => DetailScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
