import 'package:flutter/material.dart';

class iconwithTextOnly extends StatelessWidget {
  iconwithTextOnly({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90,
          width: 130,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.black,
          )),
        ),
        Positioned(
          top: 30,
          right: 20,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.cabin),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
