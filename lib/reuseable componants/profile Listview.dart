import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/reuseable%20componants/buttoms1.dart';
import 'package:flutter/material.dart';

class Listnames extends StatelessWidget {
   Listnames({super.key});
  List<ListModel> names=[
    ListModel(Name: 'hi'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:(context,index)
    {
      return Buttom(text: names[index].Name,);
    },
        itemCount: names.length,
    );
  }
}
