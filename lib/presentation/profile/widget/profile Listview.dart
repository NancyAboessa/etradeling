import 'package:etradeling/presentation/messages/messages_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../messages/cubit/cubit.dart';
import 'buttoms1.dart';

class Listnames extends StatelessWidget {
  Listnames({
    super.key,
  });
  // required this.namesCubit, this.input
  // List<ListModel>? namesCubit;
  // int? input;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150, top: 80, right: 100),
      child: Container(
        height: 600,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border(
              left: BorderSide(
            width: 1.0,
            color: Color(0xff7f26),
          )),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: ListView(
            children: [
              ButtomList(text: Text('My Account'), icon: FontAwesomeIcons.user),
              ButtomList(text: Text('My Orders'), icon: FontAwesomeIcons.box),
              ButtomList(
                  text: Text('My Addresses'),
                  icon: FontAwesomeIcons.mapLocation),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: BlocProvider.of<CubitMessages>(context),
                            child: MessagesList(),
                          ),
                        ));
                  },
                  child: ButtomList(
                      text: Text('Messenger'), icon: FontAwesomeIcons.comment)),
              ButtomList(text: Text('My Request'), icon: Icons.library_books),
              ButtomList(
                  text: Column(
                    children: [
                      Text(
                        '''become vendor 
create account ''',
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ],
                  ),
                  icon: FontAwesomeIcons.newspaper),
              ButtomList(
                  text: Text('Log Out'), icon: FontAwesomeIcons.angleRight),
            ],
          ),
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
