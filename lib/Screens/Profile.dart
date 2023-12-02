import 'package:etradeling/Screens/profile%20part%20two.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/stateManagement/names_cubit.dart';
import 'package:etradeling/stateManagement/names_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../reuseable_componants/CustomMaterialButtom.dart';
import '../reuseable_componants/CustomTextField.dart';
import '../reuseable_componants/profile Listview.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  // List<ListModel> names=[];
  // NamesCubit namesCubit;
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit = NamesCubit.get(context);
    return Scaffold(
      body: BlocBuilder<NamesCubit, NamesState>(
        builder: (context, state) {
          return Scaffold(
            body: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Listnames(),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: SizedBox(
                            width: 820,
                            height: 600,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'My Account',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                //image
                                Stack(
                                  children: [
                                    //image viewer
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.black26,
                                          )),
                                    ),
                                    //icon
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 60, right: 70),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Icon(FontAwesomeIcons.pen,
                                            size: 15, color: Colors.white),
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          backgroundColor: Colors
                                              .grey[300], // <-- Button color
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'General Information',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                    color: Colors.black,
                                  ),
                                ),
                                //PART TWO
                                const SizedBox(
                                  height: 5,
                                ),
                                //text field and name and phone
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Name'),
                                        textField(cotrollar: textController),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Phone number'),
                                        textField(
                                          cotrollar: phoneNumberController,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () async {
                                    // await  cubit.sendData(data);
                                    cubit.sendData(
                                      {
                                        'name': textController.text,
                                        'phone': phoneNumberController.text,
                                      },
                                    );
                                  },
                                  child: CustomMaterialButtom(
                                    text: 'Save',
                                    width: 150,
                                    cubit: cubit,
                                    data: {
                                      'name': textController.text,
                                      'phone': phoneNumberController.text,
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 2,
                                ),
                                const Text(
                                  'Security',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // CustomMaterialButtom(text: 'Change Password',width: 200,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
//cubit code listview.builder
// Container(
// child: ListView.builder(
// itemCount: 1,
// itemBuilder: (context, index) {
// return Listnames(
// namesCubit: cubit.names,
// );
// }));

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
