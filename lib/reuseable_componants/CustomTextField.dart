import 'package:flutter/material.dart';

class textField extends StatelessWidget {
   textField({
     required this.cotrolar,
    super.key,
  });
 TextEditingController cotrolar;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 330,
      child: TextField(
        controller:cotrolar ,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero, // No rounded corners
          ),
        ),
      ),
    );
  }
}