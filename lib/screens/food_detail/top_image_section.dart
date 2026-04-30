import 'package:flutter/material.dart';
import 'package:food_app/helpers/assets_helpers/app_assets.dart';
import 'package:food_app/screens/food_detail/widgets/ratings.dart';

class TopImageSection extends StatelessWidget {
  const TopImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 300,
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
          child: Image.asset(AppAssets.friedRice3),
        ),
        Positioned(
            top: 33,
            left: 12,
            child: IconButton(onPressed: (){}, icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              fontWeight: FontWeight.bold,size: 30,))),
        FoodDetailsRatings(),
      ],
    ),
    );
  }
}
