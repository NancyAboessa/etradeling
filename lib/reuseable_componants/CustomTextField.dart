import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  textField({
    required this.cotrollar,
    super.key,
  });
  final TextEditingController? cotrollar;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 330,
      child: TextField(
        controller: cotrollar!,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero, // No rounded corners
            ),
            hintText: "x"),
      ),
    );
  }
}
