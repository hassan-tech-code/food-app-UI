import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';
import 'package:food_app/screens/authentication/forgot_password.dart';
import 'package:food_app/screens/startup_screen/start_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      backgroundColor: Colors.white.withValues(alpha: 0.85),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 250, 248, 248),
              borderRadius: BorderRadius.circular(29),
            ),
            child: Column(
              //mainAxisSize: MainAxisSize.min,

              children: [
                SizedBox(height: 20),
                SizedBox(
                    height: 220,
                    width: 240,
                    child: Image.asset('assets/images/splash3.png',
                      fit: BoxFit.cover,
                    ),
                ), // logo image
                TabBar(
                    indicator: UnderlineTabIndicator(
                      insets: EdgeInsets.symmetric(horizontal: 80),
                      borderSide: BorderSide(

                          color: Colors.redAccent,width: 3,)
                    ),
                    tabs: [
                  Tab(child: Text('Login'),),
                      Tab(child: Text('Sign up'),)
                ])
              ],
            ),
          ),
          Expanded(
          child: TabBarView(children: [
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 27),
                  CustomTextField(myHintText: 'Username, Mobile Number'),
                  SizedBox(height: 10),
                  CustomTextField(myHintText: 'Password'),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen(),));

                    },
                    child: SmallText(
                      myText: 'Forgot Password?',
                      myColor: Colors.red,
                      myFontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 18),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(330, 55),
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StartUpScreen(),));

                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    ),
                  ),
                  SizedBox(height: 9,),
                  Center(
                      child: SmallText(myText: 'Or',myFontWeight: FontWeight.bold,)),
                  SizedBox(height: 13,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(fixedSize: Size(double.infinity, 55,),backgroundColor: Colors.blue),
                      onPressed: (){},
                      child: Row(

                        children: [
                          Icon(Icons.facebook,size: 30,color: Colors.white,),
                          SizedBox(width: 20,),
                          SmallText(myText: 'Log In with facebook',myColor: Colors.white,)
                        ],
                      )),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(fixedSize: Size(double.infinity, 55,),backgroundColor: Colors.white),
                      onPressed: (){},
                      child: Row(

                        children: [
                          Image.asset('assets/icons/google_logo.png'),
                          SizedBox(width: 20,),
                          SmallText(myText: 'Log In with Google',myColor: Colors.black,)
                        ],
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Row(
                    children: [
                      SmallText(myText: 'Register',myColor: Colors.deepOrange,mySize: 35,),
                      SizedBox(width: 37,),
                      Container(height: 45,width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      child: Image.asset('assets/icons/google_logo.png',),
                      ),
                      SizedBox(width: 10,),
                      Container(height: 45,width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.facebook,color: Colors.blue,)
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(myHintText: 'Full Name'),
                  SizedBox(height: 12),
                  CustomTextField(myHintText: 'Mobile Number'),
                  SizedBox(height: 12),
                  CustomTextField(myHintText: 'Password'),
                  SizedBox(height: 12),
                  CustomTextField(myHintText: 'Confirm Password'),
                  SizedBox(height: 12),


                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(130, 55),
                          backgroundColor: Colors.deepOrangeAccent,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StartUpScreen(),));

                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 21),
                        ),
                      ),
                      SizedBox(width: 25,),
                      SmallText(myText: 'Already a \nmember? Login',myColor: Colors.grey,)
                    ],
                  ),
                  SizedBox(height: 9,),

                  SizedBox(height: 13,),

                ],
              ),
            ),
          ]),
          ),


        ],
      ),
    ));
  }
}
