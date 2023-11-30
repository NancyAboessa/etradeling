import 'package:etradeling/Screens/Profile.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/reuseable_componants/buttoms1.dart';
import 'package:etradeling/stateManagement/names_cubit.dart';
import 'package:flutter/material.dart';

class Listnames extends StatelessWidget {
  Listnames({super.key, required this.namesCubit, this.input});
  List<ListModel>? namesCubit;
  int? input;
  @override
  Widget build(BuildContext context) {
    return Buttom();
  }
}

// ListView.builder(itemBuilder:(context,index)
//     {
//      return Buttom(namesCubit:namesCubit,);
//     },
//         itemCount: namesCubit.length,
//     );
