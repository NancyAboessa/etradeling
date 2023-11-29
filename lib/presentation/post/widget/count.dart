import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int? count;
  const Count({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 80,
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
