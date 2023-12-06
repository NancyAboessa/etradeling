import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField({
    required this.controller,
    required this.label,
    super.key,
  });
  final String? label;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 330,
      child: TextField(
        controller: controller!,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero, // No rounded corners
            ),
            hintText: label!),
      ),
    );
  }
}
