import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home_screen.dart';
import 'CustomProductDetail.dart';

class customContainerWithCircleAvIcon extends StatelessWidget {
  const customContainerWithCircleAvIcon({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140.0, top: 15),
                child: CircleAvatar(
                  minRadius: 12,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.black26,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
          CustomProductDetail(
            map: {},
          ),
        ],
      ),
    );
  }
}
