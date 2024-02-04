import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utls/cache_helper/cache_helper.dart';
import 'state.dart';

class CubitMessages extends Cubit<MainMessagesState> {
  static CubitMessages get(context) => BlocProvider.of(context);
  CubitMessages() : super(MessagesInit());
  Map<String, dynamic> map = {};
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List? _listUsers;
  String? valProf;
  String Curnce = "eg";

  String? name;
  Locale lang = const Locale("en");
  listUser() async {
    emit(EmptyMessegeState());
    _listUsers = [];
    await firebaseFirestore.collection("MessagesList").get().then((value) {
      value.docs.forEach((element) {
        _listUsers!.add(element.data());
      });
    });
    emit(ListUser());
  }

  getData() async {
    // if (FirebaseAuth.instance.currentUser!.uid.isNotEmpty) {
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      map = value.data()!;
      name = map["name"];
      print("${name}");
    });
    // getImage(map);
    // }
    emit(getDataState());
  }

  getCurnce(x) async {
    Curnce = x;
    emit(GetCurnceState());
  }

  chatUser(id) async {
    await firebaseFirestore
        .collection("MessagesList")
        .where("Maseeges_id", isEqualTo: id)
        .get();
    emit(ChatUser());
  }

  sendMessege(data) async {
    if (data != null) {
      await FirebaseFirestore.instance.collection("messeges").add(data);
    }
    print(data);
    emit(sendmessegeState());
  }

  langCahnge(lang1) async {
    lang = lang1;
    // if (lang == Locale(CacheHelper.get(key: "en"))) {
    //   lang = await Locale(CacheHelper.get(key: "ar"));
    // } else {
    //   lang = await Locale(CacheHelper.get(key: "en"));
    // }
    print(lang);
    emit(LangState());
    print(lang);
  }

  dropDownProf(value) {
    valProf = value;
    emit(DropDownProf());
  }
}
