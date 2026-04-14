import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget smallText(
    String myText,{ FontWeight myFontWeight = FontWeight.w400, Color myColor =Colors.white}) {
  return Text(
    myText,
    style: TextStyle(fontSize: 19,
    color: myColor,
      fontWeight: myFontWeight
    ),

  );
}

Widget bigText(String myText,{ FontWeight myFontWeight = FontWeight.w300,
  Color myColor = const Color(0xFFFFFFFF),
  final mySize=25.0,  }) {
  return Text(
    myText,
    style: GoogleFonts.montserrat(fontSize: mySize,
    color: myColor,
    fontWeight: myFontWeight
    )

  );
}

class SmallText extends StatelessWidget {
  final String myText;
  final double mySize;
  final Color myColor ;
  final FontWeight myFontWeight;
  final TextAlign myTextAlign;
  const SmallText({super.key,
    this.myFontWeight = FontWeight.w400,
    this.myColor=Colors.black,
    required this.myText,
     this.mySize=18,  this.myTextAlign=TextAlign.start

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: myTextAlign,
      myText,
      style: TextStyle(fontSize: mySize,
          color: myColor,
          fontWeight: myFontWeight,
        overflow: TextOverflow.ellipsis

      ),

    );
  }
}


class SmallTextGrey extends StatelessWidget {
  final String myText;
  final double mySize;
  final Color myColor ;
  final FontWeight myFontWeight;
  final TextAlign myTextAlign;
   const SmallTextGrey({super.key,
    this.myFontWeight = FontWeight.w400,
    this.myColor=const Color(0xFF616161),
    required this.myText,
    this.mySize=17,  this.myTextAlign=TextAlign.start

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: myTextAlign,
      myText,
      style: TextStyle(fontSize: mySize,
          color: myColor,
          fontWeight: myFontWeight,
          overflow: TextOverflow.ellipsis
      ),

    );
  }
}

class MediumText extends StatelessWidget {
  final String myText;
  final double mySize;
  final Color myColor ;
  final FontWeight myFontWeight;
  final TextAlign myTextAlign;

  const MediumText({super.key,
    this.myFontWeight = FontWeight.w500,
    this.myColor=Colors.black,
    required this.myText,
    this.mySize=22,  this.myTextAlign=TextAlign.start

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: myTextAlign,
      myText,
      style: TextStyle(fontSize: mySize,
          color: myColor,
          fontWeight: myFontWeight,
          overflow: TextOverflow.ellipsis

      ),

    );
  }
}