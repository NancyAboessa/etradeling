import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
   TextRow({
    super.key,
    required this.textone,
    required this.texttwo,
     required this.colorone,
     required this.width,
     required this.colortwo,
  });
   double width;
String textone;
String texttwo;
Color colorone;
Color colortwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(textone,
          style: TextStyle(
            color: colorone,
          ),
        ),
        SizedBox(width: width,),
        Text(texttwo,
          style: TextStyle(
            color: colortwo,
          ),
        ),
      ],
    );
  }
}
