import 'package:flutter/material.dart';

import '../../custom_widgets/text_custom_widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: 0.85),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 35, right: 60),
            width: double.infinity,

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 250, 248, 248),
              borderRadius: BorderRadius.circular(29),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                SizedBox(height: 30),
                SizedBox(
                    height: 250,
                    width: 250,
                    child: Image.asset('assets/images/splash3.png')), // logo image
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SmallText(
                          myText: 'Login',
                          myFontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 10),
                        Container(height: 2.5, width: 130, color: Colors.red),
                      ],
                    ),
                    SmallText(myText: 'Sign-up', myFontWeight: FontWeight.bold),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35,right: 35),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(myText: '<',mySize: 30,myColor: Colors.blueGrey,),
                SmallText(
                  myText: 'Forgot \nPassword?',myColor: Colors.deepOrange,mySize: 30,myFontWeight: FontWeight.w500,),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.email,color: Colors.black,),
                    hintText: 'Enter your email address',
                    filled: true,
                    fillColor: Colors.white,

                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(height: 10,),

                SmallText(myText: 'We will send you a message to set or reset your new password',
                      myColor: Colors.blueGrey,mySize: 16,),

                SizedBox(height: 20,),
                SmallText(myText: 'Send code',myColor: Colors.blueGrey,myFontWeight: FontWeight.bold,mySize: 30,),

              ],
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30,right: 30),
        child: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          shape:  CircleBorder(),
          onPressed: (){},child: Icon(Icons.arrow_forward,color: Colors.white,),),
      ),

    );
  }
}
