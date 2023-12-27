import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/Productpage/cubit/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitProduct extends Cubit<CubitProductState> {
  CubitProduct() : super(initCubit());
  static CubitProduct get(context) => BlocProvider.of(context);
  int count = 0;
  Map<String, dynamic> mapUser = {};
  Map<String, dynamic> mapProduct = {};

  plus() {
    count++;
    emit(Plus());
  }

  PostAction() async {
    await FirebaseFirestore.instance.collection("UserAction").add({
      "user": FirebaseAuth.instance.currentUser!.uid,
      "action": "CreatePost",
    });
    // print(proudctlist);
    emit(PostActionState());
  }

  getData(id) async {
    if (id != null) {
      await FirebaseFirestore.instance
          .collection("Product")
          .doc(id)
          .get()
          .then((value) {
        mapProduct = value.data()!;
      });
      print(mapProduct);
      getUserData(mapProduct["user"]);
    }
    emit(getDataState());
  }

  getUserData(id) async {
    if (id != null) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .where("user_id", isEqualTo: id)
          .get()
          .then((value) {
        mapUser = value.docs[0].data();
        // print("${map}");
      });
      // getImage(map);
    }
    emit(getUserDataState());
  }

  sendCatgory(data) async {
    if (data != null) {
      await FirebaseFirestore.instance.collection("Cart").add(data);
    }
    emit(SendDataState());
  }

  minas() {
    count--;
    emit(Mnus());
  }
}
