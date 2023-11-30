import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/stateManagement/names_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Buttom extends StatelessWidget {
   Buttom({super.key,required this .namesCubit});

  bool _hasBeenPressed = false;

  // List<ListModel> names=[
  //   ListModel(Name: 'My Account'),
  //   ListModel(Name: 'My Orders'),
  //   ListModel(Name: 'My Addresses'),
  //   ListModel(Name: 'Messenger'),
  //   ListModel(Name: 'My Request'),
  //   ListModel(Name: 'Become Vender Create account'),
  //   ListModel(Name: 'Log out'),
  // ];
   List<ListModel> namesCubit;
  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: () {},
        child: Container(
        height: 100.h,
        width: 150.w,
            child: Row(
              children: [
             Icon(
            FontAwesomeIcons.user,
            color: _hasBeenPressed ? Colors.orange[600] : Colors.black,),
             SizedBox(width: 15.w,),
             Text(maxLines: 1,
               namesCubit[0].Name,
            style: TextStyle(
              color:Colors.cyan,
                // color: _hasBeenPressed ? Colors.orange[600] : Colors.black,

                fontSize: 18.sp),),
        ],
      ),
    )
    );
  }
}
