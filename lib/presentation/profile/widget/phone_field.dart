import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    required this.controller,
    required this.label,
    super.key,
  });
  final String? label;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 330,
      child: TextFormField(
        controller: controller,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero, // No rounded corners
            ),
            hintText: label!),
      ),
    );
  }
}
