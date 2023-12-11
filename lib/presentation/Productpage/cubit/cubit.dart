import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/Productpage/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitProduct extends Cubit<CubitProductState> {
  CubitProduct() : super(initCubit());
  static CubitProduct get(context) => BlocProvider.of(context);
  int count = 0;
  Map<String, dynamic> map = {};
  plus() {
    count++;
    emit(Plus());
  }

  getData(id) async {
    if (id != null) {
      await FirebaseFirestore.instance
          .collection("Profile")
          .where("user_id", isEqualTo: id)
          .get()
          .then((value) {
        map = value.docs[0].data();
        // print("${map}");
      });
      // getImage(map);
    }
    emit(getDataState());
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
