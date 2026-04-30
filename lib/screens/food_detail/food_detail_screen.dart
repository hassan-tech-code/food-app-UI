import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';
import 'package:food_app/screens/food_detail/top_image_section.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          TopImageSection(),
          Positioned(
            top: 240,
              left: 0,right: 0,


              child: Container(
                height:600,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          margin : EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 10),
                              blurRadius: 20
                            )
                          ],
                          color: Colors.white
                          ),
                          width: 170,
                        height: 55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Fried Rice'),
                            SmallTextGrey(myText: 'Pista House, kukatpalay',mySize: 14,)
                          ],
                        ),
                        )
                      ],
                    )
                  ],
                ),

          ))
        ],
      ),
        
      ),
    );
  }
}
