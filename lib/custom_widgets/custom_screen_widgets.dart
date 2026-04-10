import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/text_custom_widgets.dart';

Widget skipText() {
  return Container(
    margin: EdgeInsets.only(top: 60, right: 51),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        smallText('SKIP', myFontWeight: FontWeight.w400, myColor: Colors.white),
        SizedBox(width: 3),

        smallText('>', myFontWeight: FontWeight.w400),
        SizedBox(width: 3),
        smallText('>', myFontWeight: FontWeight.w400),
      ],
    ),
  );
}

Widget appLogoInScreens() {
  return Container(
    padding: EdgeInsets.only(right: 7),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(100),
    ),
    width: 70,
    height: 70,
    child: Image.asset('assets/icons/logopng.png', fit: BoxFit.cover),
  );
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
