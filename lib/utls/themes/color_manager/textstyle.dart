import 'package:flutter/material.dart';

class FonttextStyle {
  static fontBoldStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );
  }
  static lightTextStyle(){
    return  TextStyle(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    );
  }
  static boxShadowStyle (){
    return BoxShadow(
      color: Colors.grey,
      blurRadius: 5.0, // soften the shadow
      spreadRadius: 2.0, //extend the shadow
      offset: Offset(
        3.0, // Move to right 10  horizontally
        3.0, // Move to bottom 10 Vertically
      ),
    );
  }
  static goldText(){
    return  TextStyle(
      color: Colors.orange[600],
      fontSize: 25,
      fontWeight: FontWeight.w600,
    );
  }
  static goldlightText(){
    return  TextStyle(
      color: Colors.orange[600],
      fontSize: 22,
      fontWeight: FontWeight.w600,
    );
  }

}