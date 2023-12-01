import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomList extends StatelessWidget {
  final String text;
  final IconData icon;
  ButtomList({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {

        },
        child: SizedBox(
          height: 100,
          width: 100,
          child: Row(
            children: [
              Icon(
                icon as IconData?,
                color:  Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                text!,
                style: TextStyle(
                    color: Colors.black,

                    fontSize: 18),
              ),
            ],
          ),
        ));
  }
}
