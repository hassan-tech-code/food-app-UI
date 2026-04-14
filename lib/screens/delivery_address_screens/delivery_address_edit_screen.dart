import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';

class DeliveryAddressEditScreen extends StatelessWidget {
  const DeliveryAddressEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 660,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned.fill(

              child: Image.asset('assets/images/delivery_map.png',fit: BoxFit.cover,)),
          Container(
            margin: EdgeInsets.only(left: 20,top: 20),
            height: 40,width: 145,
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
              SmallText(myText: 'Deliver to',myFontWeight: FontWeight.bold,),
            ],
          ),

          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),

              height: 230,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  IconButton(
                      padding: EdgeInsets.only(left: 260),
                      onPressed: (){}, icon: Icon(Icons.edit)),
                  Row(
                    children: [
                      Icon(Icons.home_outlined,size: 33,),
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
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                        fixedSize: Size(290, 60)
                    ),
                    onPressed: (){}, child: SmallText(myText: 'Confirm Location',myColor: Colors.white,),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
