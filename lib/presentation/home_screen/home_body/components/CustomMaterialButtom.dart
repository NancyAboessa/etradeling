import 'package:flutter/material.dart';

class CustomMaterialButtom extends StatelessWidget {
  CustomMaterialButtom({
    super.key,
    required this.text,
    this.icon,
    required this.color,
    required this.coolor,
  });
  String text;
  final IconData? icon;
  Color color;
  Color coolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: coolor,
              // fontWeight: FontWeight.w100,
              fontSize: 15,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            icon as IconData?,
            color: Colors.white,
            size: 15,
          ),
        ],
      ),
    );
  }
}
