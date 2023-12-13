import 'package:etradeling/models/Messeges%20Model.dart';
import 'package:flutter/material.dart';

import '../componants/chatbodycard.dart';

class Chats extends StatelessWidget {
   Chats({super.key});

  @override
  Widget build(BuildContext context) {
    UserModel? user;
    return Scaffold(
      body:Expanded(
        child: ListView.builder(
            itemBuilder: (context,index)=>chatbodycard(
              usar:user.chatsData[index],
              press: (){},
            ),
          itemCount:user!.chatsData.length,

        ),
      )
    );
  }
}
