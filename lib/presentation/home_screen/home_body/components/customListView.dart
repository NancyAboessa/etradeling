import 'package:etradeling/presentation/home_screen/home_body/components/imageWithText.dart';
import 'package:flutter/material.dart';

class listViewhome extends StatelessWidget {
  listViewhome({
    super.key,
    required this.widget,
    required this.items,
    required this.left,
    this.hight,
    this.width,
  });
  Widget widget;
  int items;
  double left;
  double? hight;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: left),
      child: Container(
        height: hight,
        width: width,
        alignment: Alignment.center,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            // Number of columns
          ),
          itemBuilder: (context, index) {
            return widget;
          },
          itemCount: items,
        ),
      ),
    );
  }
}
