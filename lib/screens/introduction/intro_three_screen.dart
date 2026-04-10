import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';

import '../../custom_widgets/text_custom_widgets.dart';
class IntroThreeScreen extends StatelessWidget {
  const IntroThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(mainAxisSize: MainAxisSize.min,
        children: [
          skipText(),
          SizedBox(height: 41,),
          appLogoInScreens(),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 40,right: 40,bottom: 20),
            child: Column(
              children: [
                bigText(
                  'Fast, rescued ',
                  mySize: 37.5,
                ),
                bigText('food at your',mySize: 36.5),
                bigText('service.',mySize: 36.5),

              ],
            ),
          ),

          Image.asset('assets/images/intro_screen_three.png',width: 205,fit: BoxFit.contain,),
          SizedBox(height: 17,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.white70,
              padding: EdgeInsets.only(top: 20,bottom: 20,right: 80,left: 80)
              ),
              onPressed: (){}, child: Text(
            'Get Started!',style: TextStyle(
              fontSize: 17,color: Colors.redAccent),
          ),
          )
        ],

      ),
    );
  }
}


