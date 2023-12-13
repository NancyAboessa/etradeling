import 'package:etradeling/models/Messeges%20Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatbodycard extends StatelessWidget {
   chatbodycard({super.key,
     this.usar,
     this.press,
  });
  final UserModel ?usar;
  final VoidCallback ?press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage:AssetImage(
                usar!.userImage
              ),
              radius: 25,
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(usar!.name,style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text(usar!.messege,style: TextStyle(
                      color: Colors.black38,
                    ),),
                  ],
                ),
                )),
          ],
        ),
      ),
    );
  }
}
