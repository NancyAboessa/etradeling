import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final cubit;
  final Map<String, dynamic> data;
  const ProfileButton({super.key, required this.cubit, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 250,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: const Text(
        "save",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
