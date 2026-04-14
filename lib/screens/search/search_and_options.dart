import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';
final List <Map<String,String>> foodItems=[
  {
    'name':'Fried Rice -Delivery  ', 'sub':'Dish', 'img':'assets/images/food9.jfif',
  },
  {'name':'Fried Rice - Dining ', 'sub':'Dish', 'img':'assets/images/food8.jfif',},
  {'name':'Baked chicken ', 'sub':'Kukatpallay', 'img':'assets/images/food5.webp',},
  {'name':'Luxury cauliflower cheese ', 'sub':'Cheese', 'img':'assets/images/food6.webp',},
  {'name':'Fried Rice ', 'sub':'Dish', 'img':'assets/images/food6.webp',},
  {'name':'Muffins ', 'sub':'Food', 'img':'assets/images/food7.webp',},
  {'name':'Sri Matha Chinese Fast Food Centre ', 'sub':'Medchal Road', 'img':'assets/images/food6.webp',},

];

class SearchAndOptions extends StatelessWidget {

  const SearchAndOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 1,left: 1,right: 1),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(top: 30,bottom: 30,right: 15,left: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [

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
                            SmallText(myText: 'Fried Rice',myColor: Colors.blueGrey,)
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
                  SizedBox(height: 20,),
                  SearchedItemsBuilder()// this one has listview builder which has outlined buttons for search items
                ],

              ),
            ),
            Expanded(
              child: Container(
               //width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:  Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                  return Container(
                    margin:EdgeInsets.only(left: 1,top: 1,),


                    child: ListTile(leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(foodItems[index]['img']!),),
                    title: Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SmallText(myText: foodItems[index]['name']!,mySize: 15),
                          ),
                        ),
                        //Text(foodItems[index]['name']!,style: TextStyle(overflow: TextOverflow.ellipsis,fontSize: 14),),
                        //SmallText(myText: ' - Delivery',myFontWeight: FontWeight.normal,mySize: 17)
                      ],
                    ),
                      subtitle: SmallText(myText: foodItems[index]['sub']!,myColor: Colors.blueGrey,mySize: 15,),
                    )
                  );
                },itemCount: foodItems.length,scrollDirection: Axis.vertical,),

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
            BottomNavigationBarItem(icon: Icon(Icons.circle_outlined),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: '')
      ]),
    );
  }
}
