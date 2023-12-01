import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 330,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero, // No rounded corners
          ),
        ),
      ),
    );
  }
}