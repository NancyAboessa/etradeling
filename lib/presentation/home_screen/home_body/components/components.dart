import 'package:flutter/material.dart';

class iconwithTextOnly extends StatelessWidget {
  iconwithTextOnly({
    super.key,
    required this.text
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height:100 ,
          width: 130,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black,)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45,left: 30),
          child: Row(
            children: [
              Icon(Icons.cabin),
              SizedBox(width: 5,),
              Text(text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}