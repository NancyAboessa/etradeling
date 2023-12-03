import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField({
    required this.controller,
    super.key,
  });
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 330,
      child: TextField(
        controller: controller!,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero, // No rounded corners
            ),
            hintText: "x"),
      ),
    );
  }
}
