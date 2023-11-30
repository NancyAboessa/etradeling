import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget defaultButton ({
  Color background=Colors.blue,
  bool isUpperCase=true,
required String lable,
}) =>
    Container(
      width: 100.w,
      height: 40.0.h,
        color: background,
      child: TextField(
       decoration: InputDecoration(
         label: Text(lable),
       ),
      ),
    );