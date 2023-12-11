import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class CubitMessages extends Cubit<MainMessagesState> {
  static CubitMessages get(context) => BlocProvider.of(context);
  CubitMessages() : super(MessagesInit());
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List? _listUsers;
  listUser() async {
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
}
