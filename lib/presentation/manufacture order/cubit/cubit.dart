import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/manufacture%20order/cubit/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactoryCubit extends Cubit<MainFactoryState> {
  FactoryCubit() : super(InitFactoryState());
  static FactoryCubit get(context) => BlocProvider.of(context);
  List orderList = [];
  List commintList = [];
  List userId = [];
  String userName = "";

  Map<String, dynamic> mapRFQ = {};
  getRFQ(id) async {
    await FirebaseFirestore.instance
        .collection("RQF")
        .doc(id)
        .get()
        .then((value) {
      mapRFQ = value.data()!;
    });

    emit(GetRFQ());
  }

  getRFQCommint(id) async {
    emit(LoadCommintState());
    commintList = [];
    await FirebaseFirestore.instance
        .collection("RQF")
        .doc(id)
        .collection("commints")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        commintList.add(element.data());
        print("${commintList}");
      });
    });
    emit(GetRFQCommintState());
  }

  getProfile() async {
    await FirebaseFirestore.instance
        .collection("Profile")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      userName = value.data()!["name"];
    });
    print(userName);
    emit(getProfileState());
  }

  getAll() async {
    orderList = [];
    userId = [];
    await FirebaseFirestore.instance.collection("RQF").get().then((value) {
      value.docs.forEach((element) {
        orderList.add(element.data());
        userId.add(element.id);
      });
    });
    print(orderList);
    emit(GetFactoryState());
  }

  sendCommint(id, data) async {
    orderList = [];
    await FirebaseFirestore.instance
        .collection("RQF")
        .doc(id)
        .collection("commints")
        .add(data);
    emit(SendCommintState());
  }
}
