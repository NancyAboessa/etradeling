import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class CubitMessages extends Cubit<MainMessagesState> {
  static CubitMessages get(context) => BlocProvider.of(context);
  CubitMessages() : super(MessagesInit());
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List? _listUsers;
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

  langCahnge() async {
    lang = await Locale("ar");
    print(lang);
    emit(LangState());
    print(lang);
  }
}
