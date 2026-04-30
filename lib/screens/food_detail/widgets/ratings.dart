import 'package:flutter/material.dart';

import '../../../custom_widgets/text_custom_widgets.dart';

class FoodDetailsRatings extends StatelessWidget {
  const FoodDetailsRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 18,
        right: 25,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
            decoration: BoxDecoration(
                border: BoxBorder.symmetric(vertical: BorderSide(color: Colors.white),horizontal: BorderSide(color: Colors.white)),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(radius: 10,backgroundColor: Colors.grey.shade300,),
                    Padding(padding: EdgeInsets.only(left: 18),
                        child: CircleAvatar(radius: 10,backgroundColor: Colors.grey.shade300))
                  ],
                ),
                SizedBox(width: 7,),
                SmallTextWhite(myText: '4.5',mySize: 16,),
                Icon(Icons.star,color: Colors.white,size: 16,)
              ],
            )
        ));
  }
}
