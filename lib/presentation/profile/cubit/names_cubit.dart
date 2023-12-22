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
  int count = 0;
  String? myProf;
  Uint8List webImage = Uint8List(8);
  String? valCountry;
  List address = [];
  List listMaseges = [];
  List listmaseges = [];
  List listUsresMaseges = [];

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
      for (var element in value.docs) {
        id = element.id;
        // print(id);
      }
    });
    // getImage(map["image"]);
    emit(GetDataState());
  }

  Count(index) {
    count = index;
    emit(CountState());
  }

  sendData(data) {
    print(data);
    if (data != null && id != null) {
      FirebaseFirestore.instance.collection("Profile").doc(id!).update(data);
    }
    emit(GetProfileState());
  }

  sendAddress(data) {
    print(data);
    if (data != null && id != null) {
      FirebaseFirestore.instance
          .collection("Profile")
          .doc(id!)
          .collection("Address")
          .add(data);
    }
    emit(SendProfileAddress());
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

  getTradeData(id) async {
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
    emit(getDataTradeState());
  }

  getAddress() async {
    await getProfie();
    emit(EmptyAddress());
    // address = [];
    if (id != null) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .doc(id!)
          .collection("Address")
          .get()
          .then((value) {
        for (var element in value.docs) {
          address.add(element.data());
        }
      });
      print("this is ${address}");
    }
    emit(GetProfileAddress());
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

  createRomeCubit(tradeProfile) async {
    // print(data);
    await FirebaseFirestore.instance
        .collection("Profile")
        .where("user_id", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      myProf = value.docs[0].id;
    });
    FirebaseFirestore.instance
        .collection("Profile")
        .doc(myProf!)
        .collection("MessagesList")
        .doc(tradeProfile)
        .set({
      "name": map["name"],
      "receiver": tradeProfile,
      "sender": FirebaseAuth.instance.currentUser!.uid,
    });

    emit(CreateRomeState());
  }

  GetMassenger() async {
    // print(data);
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(id)
        .collection("MessagesList")
        .get()
        .then((value) {
      listMaseges = [];
      value.docs.forEach((element) {
        listMaseges.add(element.data());
        listUsresMaseges.add(element.id);
      });
    });
    print(listMaseges);
    emit(MassengerGet());
  }

  dropDownCountry(value) async {
    // print(data);
    valCountry = value;
    emit(DropDownCountryState());
  }

  SendMessages(recver, massege) async {
    // print(data);
    String? recverid;
    await FirebaseFirestore.instance
        .collection("Profile")
        .where("user_id", isEqualTo: recver)
        .get()
        .then((value) {
      recverid = value.docs[0].id;
    });

    FirebaseFirestore.instance
        .collection("Profile")
        .doc(id)
        .collection("MessagesList")
        .doc(recver)
        .collection("Messages")
        .add({"messages": massege});
    FirebaseFirestore.instance
        .collection("Profile")
        .doc(recverid!)
        .collection("MessagesList")
        .doc(id)
        .collection("Messages")
        .add({
      "receiver": recver,
      "messages": massege,
      "sender": FirebaseAuth.instance.currentUser!.uid
    });
    print(recverid);
    emit(SendMessegeState());
  }

  getMessages(recver) async {
    // print(data);

    FirebaseFirestore.instance
        .collection("Profile")
        .doc(id)
        .collection("MessagesList")
        .doc(recver)
        .collection("Messages")
        .snapshots()
        .listen((event) {
      listmaseges = [];
      event.docs.forEach((element) {
        listmaseges.add(element.data());
      });
    });
    print(listmaseges);
    emit(GetMessegeState());
  }
}
