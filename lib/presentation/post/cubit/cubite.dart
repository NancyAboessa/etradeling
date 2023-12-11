import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
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
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;
      await FirebaseStorage.instance
          .ref('uploads/$fileName')
          .putData(fileBytes!);
      firstImage = await FirebaseStorage.instance
          .ref('uploads/$fileName')
          .getDownloadURL();
      emit(GetImageStateFirst());
    }
  }

//image picker
  getImageScound() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;
      // Upload file
      await FirebaseStorage.instance
          .ref('uploads/$fileName')
          .putData(fileBytes!);
      scondImage = await FirebaseStorage.instance
          .ref('uploads/$fileName')
          .getDownloadURL();
      emit(GetImageStateScound());
    }
  }
}
