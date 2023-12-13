import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatBubble extends StatelessWidget {
  const chatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 16,top: 16,bottom: 16,right: 16),
                margin: EdgeInsets.symmetric(horizontal:16 ,vertical:8 ),
                decoration: BoxDecoration(
                  color: Colors.orange[600],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('iam New User',
                  style:TextStyle(color: Colors.white) ,),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 16,top: 16,bottom: 16,right: 16),
                margin: EdgeInsets.symmetric(horizontal:16 ,vertical:8 ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('iam New User',
                  style:TextStyle(color: Colors.white) ,),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
