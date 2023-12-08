import 'package:etradeling/presentation/home_screen/home_body/components/imageWithText.dart';
import 'package:flutter/material.dart';

class listViewhome extends StatelessWidget {
  listViewhome({
    super.key,
    required this.widget,
    required this.items,
    required this.left,
    required this.hight,
  });
  Widget widget;
  int items;
  double left;
  double hight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: SizedBox(
        height: hight,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return widget;
          },
          itemCount: items,
        ),
      ),
    );
  }
}
