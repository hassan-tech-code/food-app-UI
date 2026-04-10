import 'package:flutter/material.dart';
import 'package:food_app/screens/authentication/forgot_password.dart';
import 'package:food_app/screens/authentication/login.dart';
import 'package:food_app/screens/introduction/intro_one_screen.dart';
import 'package:food_app/screens/introduction/intro_three_screen.dart';
import 'package:food_app/screens/introduction/intro_two_screen.dart';
import 'package:food_app/screens/search/search_and_options.dart';
import 'package:food_app/screens/splash_screen/splash_screen.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}
