import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';
import 'package:food_app/screens/delivery_address_screens/delivery_address_edit_screen.dart';
class DeliveryAddressScreen extends StatelessWidget {
  const DeliveryAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 625,width: double.infinity,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          color: Colors.grey.shade200
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35)),
            padding: EdgeInsets.only(top: 13,left: 22,right: 20),

            width: double.infinity,
            height: 400,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(width: 1,),
                    SmallText(myText: 'Deliver to',myFontWeight: FontWeight.w500,),

                  ],
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      label: Text('Search Location'),
                      border: OutlineInputBorder(borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(13)
                      )
                  ),
                ),   ///TextField  to search location
                SizedBox(height: 20,),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.home_outlined,size: 30,),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(myText: 'Muhammad Hassan',myFontWeight: FontWeight.bold,mySize: 17,),
                        SmallText(myText: '21-42-34, Banjara Hills, Hyderabad \n500092',
                          myFontWeight: FontWeight.normal,
                          mySize: 15,myColor: Colors.grey.shade500,),


                      ],
                    )
                  ],
                ),  ///address
                SizedBox(height: 20,),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined,size: 30,),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(myText: 'Current Location',myFontWeight: FontWeight.bold,mySize: 17,),
                        SmallText(myText: '21-42-34, Banjara Hills, Hyderabad \n500092',
                          myFontWeight: FontWeight.normal,
                          mySize: 15,myColor: Colors.grey.shade500,),


                      ],
                    )
                  ],
                ),      /// current location
                SizedBox(height: 20,),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/search_person.png'),
                    SizedBox(width: 15,),
                    SmallText(myText: 'Look up the map',myFontWeight: FontWeight.bold,mySize: 17,),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(height: 20,),

                ///edit option inside
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(myText: 'Saved Addresses',myColor: Colors.grey.shade600,myFontWeight: FontWeight.bold,),
                    Row(
                      children: [
                        SmallText(myText: 'Edit',myColor: Colors.grey.shade600,myFontWeight: FontWeight.bold,),
                        
                        IconButton(onPressed: (){
                          showModalBottomSheet(

                            context: context, builder: (context) => DeliveryAddressEditScreen(),
                          isScrollControlled: true
                          );
                        }, icon: Icon(Icons.edit,color: Colors.grey.shade600,),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),

                /// 2 containers for home and office
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 90,width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home,size: 35,),
                          SmallText(myText: 'HOME',myFontWeight: FontWeight.w500,)
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 90,width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/person_icon.png',width: 37,),
                          // Icon(Icons.person_outline,size: 35,),
                          SmallText(myText: 'OFFICE',myFontWeight: FontWeight.w500,)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
