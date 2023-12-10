import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'names_state.dart';
import 'package:file_picker/file_picker.dart';

class NamesCubit extends Cubit<NamesState> {
  NamesCubit() : super(NamesInitial());
  static NamesCubit get(context) => BlocProvider.of(context);
  bool _hasBeenPressed = false;
  final storage = FirebaseStorage.instance;
  String? scondImage;
  String? getimage;
  String? id;
  Map<String, dynamic> map = {};
  Uint8List webImage = Uint8List(8);
  List<ListModel> names = [
    ListModel(Name: 'My Account'),
    ListModel(Name: 'My Orders'),
    ListModel(Name: 'My Addresses'),
    ListModel(Name: 'Messenger'),
    ListModel(Name: 'My Request'),
    ListModel(Name: 'Become Vender Create account'),
    ListModel(Name: 'Log out'),
  ];
  getnameCubit(names) {
    ListModel(Name: names);
    emit(getnammesState());
  }

  getcolor() {
    _hasBeenPressed = !_hasBeenPressed;
    emit(colorchange());
  }

  getProfie() async {
    await FirebaseFirestore.instance
        .collection("Profile")
        .where("user_id", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        id = element.id;
        // print(id);
      });
    });
    // getImage(map["image"]);
    emit(GetDataState());
  }

  sendData(data) {
    print(data);
    if (data != null && id != null) {
      FirebaseFirestore.instance.collection("Profile").doc(id!).update(data);
    }
    emit(GetProfileState());
  }

  getData() async {
    await getProfie();
    if (id != null) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .doc(id!)
          .get()
          .then((value) {
        map = value.data()!;
        // print("${map}");
      });
      // getImage(map);
    }
    emit(getDataState());
  }

  sendImage() async {
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
      getimage = await FirebaseStorage.instance
          .ref('uploads/$fileName')
          .getDownloadURL();
      FirebaseFirestore.instance.collection("Profile").doc(id!).update({
        "image": getimage,
      });
    }
    // Emit state or perform any necessary actions
    emit(SendImageState());
  }

  getImage(image) async {
    // print(data);
    getimage = await FirebaseStorage.instance.ref(image).getDownloadURL();
    FirebaseFirestore.instance.collection("Profile").doc(id!).update({
      "image": getimage,
    });

    emit(GetImageState());
  }
}
