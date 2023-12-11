import 'package:flutter/material.dart';

class CustomOrangeBottom extends StatelessWidget {
   CustomOrangeBottom({
    super.key,
     required this.text,
  required this.width,
  });
String text;
double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width:width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange[600],
      ),
      child: MaterialButton(
        onPressed: () {},
        child:  Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
