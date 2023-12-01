import 'package:flutter/material.dart';

class CustomMaterialButtom extends StatelessWidget {
  CustomMaterialButtom({
    super.key,
    required this.text,
    required this.width
  });

  String text;
  double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.zero,
        color: Colors.black,
      ),
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: (){},
        child:
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),


      ),
    );
  }
}
