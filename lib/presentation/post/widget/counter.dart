import 'package:etradeling/presentation/post/widget/count.dart';
import 'package:flutter/material.dart';
import 'counter_button.dart';
import 'minas.dart';

class Counter extends StatelessWidget {
  final minasFunction;
  final plasFunction;
  final int? count;
  String ?text;
     double width;
       double left;
       double hight;
       double widthtt;
   Counter(
      {super.key,
  required this.text,
  required this.left,
  required this.width,
      required this.minasFunction,
      required this.plasFunction,
      required this.count,
  required this.hight,
        required this.widthtt,
       });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Text(text!,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 0.0, left: left),
          child: Row(
            children: [
              // plus button
              CounterButton(query: '+', fanc: plasFunction,hight: hight,),
               SizedBox(
                width: widthtt,
              ),
              Count(count: count, width: width,hight: hight,),
               SizedBox(
                width: widthtt,
              ),
              // minas button
              CounterButtonMinas(query: '-', fanc: minasFunction,hight: hight,),
            ],
          ),
        ),
      ],
    );
  }
}
