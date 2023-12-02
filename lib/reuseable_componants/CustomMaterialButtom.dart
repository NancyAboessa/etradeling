import 'package:etradeling/stateManagement/names_cubit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CustomMaterialButtom extends StatelessWidget {
  CustomMaterialButtom({
    super.key,
    required this.text,
    required this.width,
    required this .cubit,
    required this.data,
  });
  var cubit;
  Map<String,dynamic> ?data ;
  final storage = FirebaseStorage.instance;
  String text;
  double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.zero,
        color: Colors.black,
      ),
      width: width,
      height: 40,
      child: MaterialButton(
        onPressed: ()async{
       // await  cubit.sendData(data);
        if(data !=null){
          await cubit.sendData(data);
        }
        },
        child:
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),


      ),
    );
  }
}
