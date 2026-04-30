import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';
import 'package:food_app/helpers/assets_helpers/app_assets.dart';
import 'package:food_app/helpers/colors_helpers/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {


  final controller=PageController();
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        shadowColor: Colors.black,
        width: 220,
       child: Column(
         children: [


           DrawerHeader(
               decoration: BoxDecoration(color: Colors.green,),
               child: Icon(Icons.person_outline)),
         ],
       ),
      ),
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Home',style: TextStyle(fontSize: 22),),
            Text('21-42-34, Murree, Pakistan',style: TextStyle(fontSize: 14),)
          ],
        ),
      //leading: Icon(Icons.home_outlined,size: 33,),
        actions: [IconButton(
            padding: EdgeInsets.only(right: 20),
            onPressed: () {},
        icon: Icon(Icons.favorite,color: Colors.greenAccent,size: 32,))],
        
        
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: SearchTextField(myColor: Colors.grey.shade100,)),
              FilterContainer(),

            ],
          ),

          SizedBox(
            height: 180,
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.all(13),
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
                  height: 160,width: double.infinity,
                decoration: BoxDecoration(
                  //color: Color.fromRGBO(86, 163, 137, 80),
                  color: AppColors.seafoamGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MediumText(myText: 'Select Preferences',myColor: Colors.white,),
                          SmallTextWhite(myText: 'for multiple users',myFontStyle: FontStyle.italic,),
                          SizedBox(height: 20,),
                          SmallTextWhite(myText: 'You can now order from \nmultiple restaurants online',mySize: 14,)

                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(AppAssets.homeScreen1,width: 100,height: 100,),
                          SmallTextWhite(myText: '> set them now',mySize: 14,)
                        ],
                      )

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(13),
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
                  height: 160,width: double.infinity,
                  decoration: BoxDecoration(
                    //color: Color.fromRGBO(86, 163, 137, 80),
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MediumText(myText: 'Select Preferences',myColor: Colors.white,),
                          SmallTextWhite(myText: 'for multiple users',myFontStyle: FontStyle.italic,),
                          SizedBox(height: 20,),
                          SmallTextWhite(myText: 'You can now order from \nmultiple restaurants online',mySize: 14,)

                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(AppAssets.homeScreen1,width: 100,height: 100,),
                          SmallTextWhite(myText: '> set them now',mySize: 14,)
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
          SmoothPageIndicator(controller: controller, count: 2,
            effect: WormEffect(
              activeDotColor: Colors.green
            ),

          ),
          SizedBox(height: 20,),

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                
                width: double.infinity,
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MediumText(myText: 'Your Preferences',myColor: AppColors.seafoamGreen,),
                        Row(
                          children: [
                            SmallTextGrey(myText: 'Edit'),
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.grey,)),
                          ],
                        )
                      ],
                    ),
                    SmallTextGrey(myText: 'Now order user specific food directly below'),
                   UsersNumberedContainer(userNumberOfContainer: 'User 1'),
                   UsersNumberedContainer(userNumberOfContainer: 'User 2'),
                    UsersNumberedContainer(userNumberOfContainer: 'User 3'),
                    UsersNumberedContainer(userNumberOfContainer: 'User 4'),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            children: [
                              Image.asset(AppAssets.homeScreen2),
                              SizedBox(height: 7,),
                              SmallTextGrey(myText: 'Hot Deals',mySize: 12,)
                            ],
                        ),
                        Column(
                          children: [
                            Image.asset(AppAssets.homeScreen3,width: 70,),
                            SmallTextGrey(myText: 'New on\nFastFood',mySize: 12,)
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(AppAssets.homeScreen4,width: 40,),
                            SizedBox(height: 7,),
                            SmallTextGrey(myText: 'Save food\nsave hunger',mySize: 12,)

                          ],
                        ),
                       Column(
                         children: [
                           Image.asset(AppAssets.homeScreen5,width: 40,),
                           SizedBox(height: 7,),
                           SmallTextGrey(myText: 'Set your\npreferences\nnow',mySize: 12,myTextAlign: TextAlign.center,)

                         ],
                       )

                      ],
                    )
                  ],
                ),
                
              ),
            ),
          )
        ],
      )

    );
  }
}
