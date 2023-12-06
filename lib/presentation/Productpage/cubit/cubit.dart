import 'dart:io';
import 'package:etradeling/presentation/Productpage/cubit/state.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../test.dart';

class CubitProduct extends Cubit< CubitProductState>{
  static CubitProduct get(context) => BlocProvider.of(context);
  CubitProduct() : super(initCubit());
  String? refrance;
  File ?file;
  getImage()async{
    final imagePiker = ImagePicker();
    XFile? image = await imagePiker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var f = await image.readAsBytes();
      webImage = f;
      refrance = image.path.toString();
      await FirebaseStorage.instance
          .ref()
          .child(image.path.toString())
          .putData(f);
    }
 emit(imageSuceessState());
 }


int count = 0;

  plus() {
    count++;
    emit(Plus());
  }

  minas() {
    count--;
    emit(minas());
  }


}