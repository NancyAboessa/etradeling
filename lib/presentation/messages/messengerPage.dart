import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../profile/widget/profile Listview.dart';
import 'chatscreen/chatingscreen.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainAppBar(),
          Row(
            children: [

              Listnames(),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: 40,bottom: 155),
                          child: Container(
                           // padding: EdgeInsets.only(left: 350),
                            width: 300,
                              height: 350,
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 3.0,
                                  )
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50,right: 180),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.message),
                              SizedBox(width: 10,),
                              Text('Messenger',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70,right: 55,left: 15),
                          child: Divider(
                            height: 40,
                            thickness: 1,
                            color: Colors.black26,
                            endIndent: 110,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110,right:50,left: 15),
                          child: Container(
                            width: 250,
                            height: 40,
                            child: TextField(

                              decoration: InputDecoration(
                                hintText: 'Search Messeges',
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                ),
                                prefixIcon: Icon(Icons.search,color: Colors.black38,),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black38),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
             ],
          ),
        ],
      ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.only(right: 50,bottom: 175,),
// child: Container(
// height: 400,
// width: 300,
// child: Chating()),
// ),
