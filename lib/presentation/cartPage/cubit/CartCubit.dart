import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/Productpage/cubit/state.dart';
import 'package:etradeling/presentation/cartPage/cubit/CartState.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../test.dart';

class CartCubit extends Cubit<CubitCartState> {
  static CartCubit get(context) => BlocProvider.of(context);
  CartCubit() : super(initCartCubit());
  String? refrance;
  File? file;
  Map<String, dynamic>? map;
  int count = 0;
  List list = [];
  getUserData() async {
    await FirebaseFirestore.instance.collection("Cart").get().then((value) {
      value.docs.forEach((element) {
        list.add(element.data());
      });
    });
    print(list);
    emit(GetUserDataState());
  }

  plus() {
    count++;
    emit(PlusCart());
  }

  minas() {
    count--;
    emit(minasCart());
  }
}
