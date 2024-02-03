import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'names_state.dart';
import 'package:file_picker/file_picker.dart';

class NamesCubit extends Cubit<NamesState> {
  NamesCubit() : super(NamesInitial());
  static NamesCubit get(context) => BlocProvider.of(context);
  bool _hasBeenPressed = false;
  String? firstImage;
  String? scondImage;
  final storage = FirebaseStorage.instance;
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
  List listRequest = [];
  List listRequestTrue = [];
  List mainListRequest = [];
  int listIndex = 0;
  int requestIndex = 1;
  NewPassword() async {
    String? x = await FirebaseAuth.instance.currentUser!.email;
    FirebaseAuth.instance.sendPasswordResetEmail(email: x!);
    emit(NewpassState());
  }

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

  logOut() async {
    await FirebaseAuth.instance.signOut();
    emit(LogeOutState());
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

  Count(index, route) {
    count = index;

    emit(CountState());
  }

  sendData(data) {
    print(data);
    if (data != null && FirebaseAuth.instance.currentUser!.uid.isNotEmpty) {
      FirebaseFirestore.instance
          .collection("Profile")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update(data);
    }
    emit(GetProfileState());
  }

  sendAddress(data) {
    print(data);
    if (data != null && FirebaseAuth.instance.currentUser!.uid.isNotEmpty) {
      FirebaseFirestore.instance
          .collection("Profile")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection("Address")
          .add(data);
    }
    emit(SendProfileAddress());
  }

  getData() async {
    // if (FirebaseAuth.instance.currentUser!.uid.isNotEmpty) {
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      map = value.data()!;
      // print("${map}");
    });
    // getImage(map);
    // }
    emit(getDataState());
  }

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

  getTradeData(id) async {
    if (id != null) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .doc(FirebaseAuth.instance.currentUser!.uid)
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
    if (FirebaseAuth.instance.currentUser!.uid.isNotEmpty) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .doc(FirebaseAuth.instance.currentUser!.uid)
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
    var formatter = new DateFormat('yyyy-MM-dd');
    var now = new DateTime.now();
    String formattedDate = formatter.format(now);
    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;
      // Upload file
      await FirebaseStorage.instance
          .ref('uploads/$formattedDate')
          .putData(fileBytes!);
      getimage = await FirebaseStorage.instance
          .ref('uploads/$formattedDate')
          .getDownloadURL();
      FirebaseFirestore.instance
          .collection("Profile")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
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
    FirebaseFirestore.instance
        .collection("Profile")
        .doc(tradeProfile)
        .get()
        .then((value) {
      id = value.data()!["name"];
    });
    FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("MessagesList")
        .doc(tradeProfile)
        .set({
      "name": id,
      "receiver": map["name"],
      "sender": FirebaseAuth.instance.currentUser!.uid,
    });
    FirebaseFirestore.instance
        .collection("Profile")
        .doc(tradeProfile)
        .collection("MessagesList")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set({
      "name": map["name"],
      "receiver": id,
      "sender": FirebaseAuth.instance.currentUser!.uid,
    });

    emit(CreateRomeState());
  }

  GetMassenger() async {
    // print(data);
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("MessagesList")
        .get()
        .then((value) {
      listMaseges = [];
      value.docs.forEach((element) {
        listMaseges.add(element.data());
        listUsresMaseges.add(element.id);
      });
    });
    mainListRequest.add(listRequest);

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
        .doc(recver)
        .get()
        .then((value) {
      recverid = value.id;
    });

    FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("MessagesList")
        .doc(recver)
        .collection("Messages")
        .add({
      "receiver": recver,
      "messages": massege,
      "sender": FirebaseAuth.instance.currentUser!.uid
    });
    FirebaseFirestore.instance
        .collection("Profile")
        .doc(recverid!)
        .collection("MessagesList")
        .doc(FirebaseAuth.instance.currentUser!.uid)
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
        .doc(FirebaseAuth.instance.currentUser!.uid)
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

  requestList() async {
    emit(EmptyRequestListState());
    listRequest = [];
    await FirebaseFirestore.instance
        .collection("Product")
        .where("user", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        if (element.data()["ispending"] == false) {
          listRequest.add(element.data());
        }
      });
      print("y");
    });
    emit(RequestListState());
  }

  vendorCubit(data) async {
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update(data);
    emit(VendorState());
  }

  requestColorTop(index) async {
    requestIndex = index;
    print(requestIndex);
    if (requestIndex == 3) {
      requestListTrue();
    } else {
      requestList();
    }
    emit(RequestColorTop());
  }

  requestListTrue() async {
    emit(EmptyRequestListState());
    listRequest = [];
    await FirebaseFirestore.instance
        .collection("Product")
        .where("user", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        if (element.data()["ispending"] == true) {
          listRequest.add(element.data());
        }
      });
    });
    emit(RequestListTrueState());
  }
}
