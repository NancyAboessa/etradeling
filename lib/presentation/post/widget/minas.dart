import 'package:flutter/material.dart';

class CounterButtonMinas extends StatelessWidget {
  final String? query;
  final fanc;
  final double hight;
  const CounterButtonMinas(
      {super.key,
        required this.hight,
        required this.query, required this.fanc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await fanc.minas();
      },
      child: Container(
        height: hight,
        width: hight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.black,
          width: .2,
        )),
        child: Text(query!),
      ),
    );
  }
}
