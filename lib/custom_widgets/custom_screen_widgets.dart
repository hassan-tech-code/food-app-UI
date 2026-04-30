import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';

import '../helpers/assets_helpers/app_assets.dart';


class SkipText extends StatelessWidget {
  const SkipText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60, right: 35),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          smallText('SKIP >>', myFontWeight: FontWeight.w400, myColor: Colors.grey.shade300),
          SizedBox(width: 3),


        ],
      ),
    );
  }
}


class AppLogoInScreens extends StatelessWidget {
  final double myContainerHeight;
  final double myContainerWidth;
  const AppLogoInScreens({super.key,
  this.myContainerHeight=110,
    this.myContainerWidth=110,
  }
);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(right: 17,left: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      width: myContainerWidth,
      height: myContainerHeight,
      child: Image.asset('assets/icons/logopng.png',fit: BoxFit.contain,
        //fit: BoxFit.cover,
      ),
    );
  }
}


class CustomTextField extends StatelessWidget {
  final String myHintText;
  const CustomTextField({super.key, required this.myHintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: myHintText,
        filled: true, // it is needed to enable color
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final IconData myIcon;
  const CustomElevatedButton({super.key, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      
    }, child: Row(
      children: [
        Icon(myIcon),
        
      ],
    ));
  }
}


class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Icon(Icons.filter_alt_rounded,color: Colors.green,size: 29,),
    );
  }
}

class SearchTextField extends StatelessWidget {
  final String myLabel;
  final Color myColor;
  const SearchTextField({super.key,
  this.myLabel='Search food nearby',
    this.myColor=Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
            filled: true,
        fillColor: myColor,
          label: Text(myLabel),


          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none)

        ),
      ),
    );
  }
}


class SearchedItemsBuilder extends StatelessWidget {

   SearchedItemsBuilder({super.key});
  final List <String> searchItems =[
    'Rescued',
    'Vegan',
    'Delivery',
    '>100 kcal',
    'Popular',
    'New',
    'Vegan',
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: ListView.builder(itemBuilder: (context, index) {
        return  Padding(
          padding: EdgeInsets.only(left: 3,right: 3),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(

                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4.5),
                minimumSize: Size.zero,

                side: BorderSide(color: Colors.white)),
            onPressed: (){}, child: SmallText(myText: searchItems[index],myColor: Colors.white,mySize: 15,),
          ),
        );
      },
        itemCount: searchItems.length,
        scrollDirection: Axis.horizontal,
      ),
    ) ;
  }
}

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String minutesTaken;
  final String restaurantName;
  final String foodType;
  final String rating;
  final String originalPrice;
  final String discountedPrice;
  final String caloriesInFood;
  const FoodCard({super.key,
    required this.imageUrl, required this.minutesTaken, required this.restaurantName, required this.foodType, required this.rating, required this.originalPrice, required this.discountedPrice, required this.caloriesInFood});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                spreadRadius: 5,
                blurRadius: 15,
                offset: const Offset(1, 10)
            )
          ]

      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  child: Image.asset(imageUrl, fit: BoxFit.cover,height: 170,)),
              Positioned(
                  top: 19,
                  left: -6,

                  //margin: EdgeInsets.only(top: 20,right: 20),
                  child: Image.asset(AppAssets.labelOnFoodPic1,)),
              Positioned(
                  top: 50,
                  left: -6,
                  //margin: EdgeInsets.only(top: 55),
                  child: Image.asset(AppAssets.labelOnFoodPic2)),
              Container(
                width: 80,
                margin: EdgeInsets.only(top: 112,left: 10),
                //padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 4,),
                    Icon(Icons.timer_outlined,size: 20,),
                    Text(minutesTaken),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MediumText(myText: restaurantName),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          SmallText(myText: rating,myColor: Colors.white,),
                          Icon(Icons.star,color: Colors.white,)
                        ],
                      ),
                    )

                  ],
                ),
                SmallTextGrey(myText: foodType,mySize: 16,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SmallTextGrey(myText: originalPrice),
                        SmallText(myText: ' $discountedPrice',myColor: Colors.orange,mySize: 23,),
                      ],
                    ), ///price
                    Row(
                      children: [
                        Icon(Icons.local_fire_department_sharp,color: Colors.orange,),
                        SmallTextGrey(myText: caloriesInFood),
                      ],
                    ), ///calories
                  ],
                )   ///price inside and calories
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UsersNumberedContainer extends StatelessWidget {
  final String userNumberOfContainer;
  const UsersNumberedContainer({super.key, required this.userNumberOfContainer});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 13),
      padding: EdgeInsets.symmetric(horizontal: 20),

      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallText(myText: userNumberOfContainer,myFontWeight: FontWeight.bold,),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}



