import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/stateManagement/names_cubit.dart';
import 'package:etradeling/stateManagement/names_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../reuseable_componants/profile Listview.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  // List<ListModel> names=[];
  // NamesCubit namesCubit;
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
      ),
      body: BlocBuilder<NamesCubit, NamesState>(
        builder: (context, state) {
          return Container(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Listnames(
                      namesCubit: cubit.names,
                    );
                  }));
        },
      ),
    );
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
