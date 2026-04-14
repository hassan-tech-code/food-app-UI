import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';
import 'package:food_app/screens/delivery_address_screens/delivery_address_screen.dart';
import 'package:food_app/screens/home_screen/home_screen.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

                },
                child: SkipText()),    //a custom text widget containing text
            SizedBox(height: 50,),
            AppLogoInScreens(), // custom container circled, having pic
            SizedBox(height: 30,),
            SmallText(myText: 'Welcome \nHassan!',myColor: Colors.grey.shade300,mySize: 35,
              myFontWeight: FontWeight.w300,myTextAlign: TextAlign.center,),
            SizedBox(height: 30,),
            SmallText(myText: 'Unlock the world of regular \nand rescued food by setting up\n your delivery address.',
                myColor: Colors.grey.shade300,myTextAlign: TextAlign.center,
            ),
            SizedBox(height: 70,),
            Container(
                margin: EdgeInsets.only(right: 100),
                child: SmallText(myText: 'SELECT LOCATION',myColor: Colors.grey.shade300,)),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  fixedSize: Size(290, 60)
                ),
                onPressed: (){}, child: Row(
              children: [
                //Icon(),
                Image.asset('assets/icons/search_person.png'),
                SizedBox(width: 20,),
                SmallText(myText: 'Locate me',myColor: Colors.red,)
              ],
            ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  fixedSize: Size(290, 60)
              ),
              onPressed: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context, builder: (context) {
                  return  DeliveryAddressScreen();
                },);
              }, child: Row(
              children: [
                Icon(Icons.location_on_outlined,size: 26,color: Colors.grey.shade600,),

                SizedBox(width: 10,),
                SmallText(myText: 'Provide Delivery Location',myColor: Colors.red,)
              ],
            ),
            ),


          ],
        ),
      ),
    );
  }
}
