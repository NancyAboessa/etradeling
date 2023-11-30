import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/reuseable%20componants/buttoms1.dart';
import 'package:etradeling/reuseable%20componants/profile%20Listview.dart';
import 'package:etradeling/reuseable%20componants/textButtom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
    Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<ListModel> names=[
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body: Listnames(),    );
  }
}
//        TextButton(onPressed: (){
//           setState(() {
//             _hasBeenPressed = !_hasBeenPressed;
//           });
//         }, child: Container(
//           height: 100.h,
//           width: 150.w,
//           decoration: BoxDecoration(),
//           child: Row(
//            children: [
//              Icon(FontAwesomeIcons.user,
//                color: _hasBeenPressed ? Colors.orange[600] : Colors.black,),
//              SizedBox(width: 15.w,),
//              Text('My Account',
//                style: TextStyle(
//                    color: _hasBeenPressed ? Colors.orange[600] : Colors.black,
// 
//                    fontSize: 18.sp),),
//                 ],
//                  ),
//         )
// 
//                   ),