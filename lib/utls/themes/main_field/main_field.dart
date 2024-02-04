import 'package:flutter/material.dart';

class MainField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  const MainField({super.key, required this.hint, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hint!,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "the field is empty";
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: hint!,
              ),
              controller: controller!,
            ),
          ),
        ],
      ),
    );
  }
}
