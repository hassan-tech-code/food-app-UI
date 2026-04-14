import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/screens/introduction/intro_three_screen.dart';

import '../../custom_widgets/text_custom_widgets.dart';
class IntroTwoScreen extends StatelessWidget {
  const IntroTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => IntroThreeScreen(),));

              },
              child: SkipText()),
          SizedBox(height: 45,),
          AppLogoInScreens(),
          SizedBox(height: 23,),
          Container(
              margin: EdgeInsets.only(left: 40,right: 40,bottom: 20),
              child: Column(
                children: [
                  bigText(
                    'Set preferences for ',
                    mySize: 27.5,
                  ),
                  bigText('multiple users from ',mySize: 27.5),
                  bigText('various restaurants!!',mySize: 27.5)
                ],
              ),
          ),// another text

          SizedBox(
            child: Image.asset('assets/images/intro_screen_two.png',width: 300,),
          )
        ],
      ),
    );
  }
}
