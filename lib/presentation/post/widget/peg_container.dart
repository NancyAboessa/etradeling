import 'package:flutter/material.dart';

class PigContainer extends StatelessWidget {
  const PigContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 250.0, top: 80),
      child: Container(
        height: 200,
        width: 1000,
        color: Colors.grey.shade100,
        padding: const EdgeInsets.only(top: 40),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("We'd Love to help you"),
            Text("Submit RFQ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            Text(
                "Tell suppliers what you need The more specific your information, the faster response you will get"),
          ],
        ),
      ),
    );
  }
}
