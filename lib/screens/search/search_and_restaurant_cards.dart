import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/custom_screen_widgets.dart';
import 'package:food_app/helpers/assets_helpers/app_assets.dart';
import 'package:food_app/screens/food_detail/food_detail_screen.dart';

class SearchAndRestaurantCard extends StatelessWidget {
  const SearchAndRestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 20,),
          Row(children: [
            Expanded(child: SearchTextField(myLabel: 'Fried Rice',)),
            FilterContainer(),
          ],),
          SizedBox(height: 25,),
          SearchedItemsBuilder(),
          SizedBox(height: 20,),
          Expanded(child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(33))
            ),
            child: ListView(
              children: [
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailScreen(),)),
                  child: FoodCard(imageUrl: AppAssets.friedRice,
                    restaurantName: 'Suhani Restaurant',
                    foodType: 'Chinnese, North India',
                    minutesTaken: '30 min',
                    rating: '4.5',
                    caloriesInFood: '141 cal',
                    originalPrice: '200',
                    discountedPrice: '₹100',
                  ),
                ), ///food card inside
                FoodCard(imageUrl: AppAssets.friedRice2, minutesTaken: '10 min', restaurantName: 'Pista House',
                    foodType: 'Chinnese, Fast Food', rating: '5.0', originalPrice: '300', discountedPrice: '250', caloriesInFood: '130 cal')
              ],
            ),
          ),
          )
        ],

      ),
      ),
    );
  }
}
