import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final String? query;
  final fanc;
  final double hight;
  const CounterButton({
    required this.hight,
    super.key, required this.query, required this.fanc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await fanc.plus();
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
