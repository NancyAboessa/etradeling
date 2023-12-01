import 'package:etradeling/Screens/Profile.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/reuseable_componants/buttoms1.dart';
import 'package:etradeling/stateManagement/names_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Listnames extends StatelessWidget {
  Listnames({super.key, });
  // required this.namesCubit, this.input
  // List<ListModel>? namesCubit;
  // int? input;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 150,top: 20),
      child: Container(
        height: 700,
        width: 300,
        decoration: BoxDecoration(
          border: Border(
              left: BorderSide(
                width: 1.0,
                color: Color(0xff7f26),
              )
          ),
        ),
        child: ListView(
          children:
          [
            ButtomList(text: 'My Account', icon: FontAwesomeIcons.user),
            ButtomList(text: 'My Orders', icon: FontAwesomeIcons.box),
            ButtomList(text: 'My Addresses', icon: FontAwesomeIcons.mapLocation),
            ButtomList(text: 'Messenger', icon: FontAwesomeIcons.comment),
            ButtomList(text: 'My Request', icon: Icons.library_books),
            ButtomList(text: 'become vendor create account ', icon: FontAwesomeIcons.newspaper),
            ButtomList(text: 'Log Out', icon: FontAwesomeIcons.angleRight),

          ],
        ),
      ),
    );
  }
}

// ListView.builder(itemBuilder:(context,index)
//     {
//      return Buttom(namesCubit:namesCubit,);
//     },
//         itemCount: namesCubit.length,
//     );
