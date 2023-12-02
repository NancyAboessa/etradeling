import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'state.dart';

class PostCubit extends Cubit<PostMainState> {
  PostCubit() : super(PostInit());
  static PostCubit get(context) => BlocProvider.of(context);
  String? valTrade;
  String? valCategory;
  String? valSubCategory;
  String? valUnit;
  int count = 0;
  String? firstImage;
  String? scondImage;

  Uint8List webImage = Uint8List(8);
  dropDownTrade(value) {
    valTrade = value;
    emit(DropDownTradeState());
  }

  dropDownCategory(value) {
    valCategory = value;
    emit(DropDownCategoryState());
  }

  dropDownSubCategory(value) {
    valSubCategory = value;
    emit(DropDownSubCategoryState());
  }

  dropDownUnit(value) {
    valUnit = value;
    emit(DropDownUnitState());
  }

  plus() {
    count++;
    emit(Plus());
  }

  minas() {
    count--;
    emit(Minas());
  }

  postCreate(data) async {
    await FirebaseFirestore.instance.collection("Product").add(data);
    emit(PostCreate());
  }

  getImageFirst() async {
    final imagePiker = ImagePicker();
    XFile? image = await imagePiker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var f = await image.readAsBytes();
      webImage = f;
      firstImage = image.path.toString();
      await FirebaseStorage.instance
          .ref()
          .child(image.path.toString())
          .putData(f);
    }
    emit(GetImageStateFirst());
  }

//image picker
  getImageScound() async {
    final imagePiker = ImagePicker();
    XFile? image = await imagePiker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var f = await image.readAsBytes();
      webImage = f;
      scondImage = image.path.toString();
      await FirebaseStorage.instance
          .ref()
          .child(image.path.toString())
          .putData(f);
    }
    emit(GetImageStateScound());
  }
}
