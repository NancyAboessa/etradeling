import 'package:etradeling/presentation/post/widget/count.dart';
import 'package:flutter/material.dart';
import 'counter_button.dart';
import 'minas.dart';

class Counter extends StatelessWidget {
  final minasFunction;
  final plasFunction;
  final int? count;
  const Counter(
      {super.key,
      required this.minasFunction,
      required this.plasFunction,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Text("Quantity",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.0, left: 100),
          child: Row(
            children: [
              // plus button
              CounterButton(query: '+', fanc: plasFunction),
              const SizedBox(
                width: 10,
              ),
              Count(count: count),
              const SizedBox(
                width: 10,
              ),
              // minas button
              CounterButtonMinas(query: '-', fanc: minasFunction),
            ],
          ),
        ),
      ],
    );
  }
}
