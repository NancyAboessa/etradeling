import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int? count;
  final double width;
  final double hight;
  const Count({super.key,
    required this.hight,
    required this.count,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: .2,
        ),
      ),
      child: Text("${count!}"),
    );
  }
}
