import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';
class IntroOneScreen extends StatelessWidget {
  const IntroOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          skipText(), /// skip text in row
          SizedBox(height: 55,),
          appLogoInScreens(),
          SizedBox(height: 30,),
          Container(
              margin: EdgeInsets.only(left: 40,right: 40),
              child: Column(
                children: [
                  bigText(
                      'Save Food',
                      mySize: 37.5,
                  ),
                  bigText('with our new',mySize: 37.5),
                  bigText('Feature!',mySize: 37.5)
                ],
              )),// another text
          SizedBox(
            child: SizedBox(
              child: Image.asset('assets/images/pngartboard.png',width: 300,),
            ),
          ),
          //Text('hello',style: TextStyle(C),)

        ],
      ),
    );
  }
}
