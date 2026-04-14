import 'package:flutter/material.dart';

import '../../custom_widgets/text_custom_widgets.dart';

class SearchFoodsScreen extends StatelessWidget {
  const SearchFoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
        
                Container(
                  margin: EdgeInsets.only(top: 20,right: 13),
                  width: 260,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.search,color: Colors.blueGrey,),
                      SizedBox(width: 15,),
                      Row(
                        children: [
                          SmallText(myText: 'Search Food ',),
                          SmallText(myText: 'nearby',myColor: Colors.blueGrey)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.filter_alt,color: Colors.green,),
                )
        
              ],
            ),
            SizedBox(height: 57,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 33,vertical: 30),
              height: 541,width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(myText: 'Recent Searches',myFontWeight: FontWeight.w500,mySize: 21,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.search),
                      SmallTextGrey(myText: ' Pizza'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.search),
                      SmallTextGrey(myText: ' Pizza hut'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.search),
                      SmallTextGrey(myText: ' Chocolate waffles',),
                    ],
                  ),
                  SizedBox(height: 50,),
                  MediumText(myText: 'Popular Cuisines'),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: Image.asset('assets/images/food1.jfif',
                              width: 73,
                            ),
                          ),
                          SizedBox(height: 5,),
                          SmallTextGrey(myText: 'Daily Meals')
                        ],
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Image.asset('assets/images/food2.jfif',
                              width: 73,
                            ),
                          ),
                          SizedBox(height: 5,),
                          SmallTextGrey(myText: 'Chinese')
                        ],
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Image.asset('assets/images/food4.jfif',
                              width: 73,
                            ),
                          ),
                          SizedBox(height: 5,),
                          SmallTextGrey(myText: 'Middle \nEastern')
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.explore_rounded),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.star_outline_rounded),label: ''),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/bottomnav3.png'),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: '')
          ]),
    );
  }
}
