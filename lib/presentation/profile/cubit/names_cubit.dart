import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

import 'names_state.dart';

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
        .where("user_id", isEqualTo: "RGZ0ztaBk2M43mkQF7MgCgasWQQ2")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        id = element.id;
        print(id);
      });
    });
  }

  sendData(data) async {
    print(data);
    getProfie();
    print(FirebaseAuth.instance.currentUser!.uid);
    if (data != null && id != null) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .doc(id!)
          // .where("user_id", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .update(data);
    }
    emit(GetProfileState());
  }

  getData() async {
    getProfie();
    if (id != null) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .doc(id!)
          .get()
          .then((value) {
        map = value.data()!;
        print("${map}");
      });
      // getImage(map);
    }
    emit(getDataState());
  }

  sendImage() async {
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
    emit(SendImageState());
  }

  getImage(image) async {
    // print(data);
    await FirebaseStorage.instance
        .ref()
        .child(image)
        .getDownloadURL()
        .then((value) {
      getimage = value;
      // print(getimage);
    });

    emit(GetImageState());
  }
}
