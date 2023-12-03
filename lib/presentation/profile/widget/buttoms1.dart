
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomList extends StatelessWidget {
  final Widget text;
  final IconData icon;
  ButtomList({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          height: 70,
          width: 100,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    icon as IconData?,
                    color:  Colors.black,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  text
                ],
              ),
            ],
          ),
        ));
  }
}


















// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class Buttom extends StatelessWidget {
//   bool _hasBeenPressed = false;
//   Buttom({
//     super.key,
//   });
//   // List<ListModel> names=[
//   //   ListModel(Name: 'My Account'),
//   //   ListModel(Name: 'My Orders'),
//   //   ListModel(Name: 'My Addresses'),
//   //   ListModel(Name: 'Messenger'),
//   //   ListModel(Name: 'My Request'),
//   //   ListModel(Name: 'Become Vender Create account'),
//   //   ListModel(Name: 'Log out'),
//   // ];
//   // List<ListModel>? namesCubit;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {},
//         child: Container(
//           height: 100,
//           width: 150,
//           child: Row(
//             children: [
//               Icon(
//                 FontAwesomeIcons.user,
//                 color: _hasBeenPressed ? Colors.orange[600] : Colors.black,
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Text(
//                 maxLines: 1,
//                 "",
//                 style: TextStyle(
//                     color: Colors.cyan,
//                     // color: _hasBeenPressed ? Colors.orange[600] : Colors.black,
//
//                     fontSize: 18),
//               ),
//             ],
//           ),
//         ));
//   }
// }
