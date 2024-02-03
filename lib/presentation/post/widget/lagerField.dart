import 'package:flutter/material.dart';

class LargeField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  const LargeField({super.key, required this.hint, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 80, right: 80),
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
          TextField(
            maxLines: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hint!,
            ),
            controller: controller!,
          ),
        ],
      ),
    );
  }
}
