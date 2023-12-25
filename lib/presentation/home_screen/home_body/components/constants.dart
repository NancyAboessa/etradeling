import 'package:flutter/material.dart';

class iconColom extends StatelessWidget {
  iconColom({
    super.key,
    required this.icon,
    required this.text,
    required this.texttwo,
  });
  String text;
  final IconData? icon;
  String texttwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 45,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Icon(
                icon,
                size: 30,
                color: Colors.black,
              ),
            ),
            Text(
              texttwo,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 15,
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(
              width: 300,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
