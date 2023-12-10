import 'package:flutter/material.dart';

class ImageWithText extends StatelessWidget {
  const ImageWithText({
    super.key,
    required this.image,
    required this.name,
  });
  final String? image;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  image: DecorationImage(
                    image: NetworkImage(image!),
                  ),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Colors.black26,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                name!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
