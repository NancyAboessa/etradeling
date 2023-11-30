import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  final cubit;
  final Map<String, dynamic>? data;
  const PostButton({super.key, required this.cubit, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        cubit.postCreate(data);
      },
      child: Container(
        height: 50,
        width: 1000,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          "submit",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
