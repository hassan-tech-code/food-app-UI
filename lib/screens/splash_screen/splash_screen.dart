import 'package:flutter/material.dart';
import 'package:food_app/screens/introduction/intro_one_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(child: Image.asset('assets/images/splash1.jpg',fit: BoxFit.cover,)),
        Container(
          margin: EdgeInsets.only(right: 90,top: 40),
          child: Image.asset('assets/images/Frame.png',height: double.infinity,),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => IntroOneScreen(),));
          },
          child: Container(
            margin: EdgeInsets.only(right: 100,top: 70,left: 80,bottom: 50),
            child: Image.asset('assets/images/splash3.png',height: double.infinity,),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 90,top: 98,left: 175,bottom: 240),
          child: Image.asset('assets/images/splash2.png',height: double.infinity,width: 90,),
        ),

      ],
      ),
    );
  }
}
