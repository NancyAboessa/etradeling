import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CustomMaterialButtom extends StatelessWidget {
  CustomMaterialButtom({
    super.key,
    required this.text,
    required this.width,
    required this.cubit,
    required this.data,
  });
  final cubit;
  Map<String, dynamic>? data;
  String text;
  double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.zero,
        color: Colors.black,
      ),
      alignment: Alignment.center,
      width: width,
      height: 40,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
