import 'package:flutter/material.dart';

class ImageUploadFirst extends StatelessWidget {
  final String? text;
  final cubit;
  const ImageUploadFirst({super.key, required this.text, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        Container(
          height: 80,
          width: 80,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: .2)),
          child: const Text("+",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
      ],
    );
  }
}
