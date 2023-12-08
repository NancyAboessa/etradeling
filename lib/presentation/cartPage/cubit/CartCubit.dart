import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/Productpage/cubit/state.dart';
import 'package:etradeling/presentation/cartPage/cubit/CartState.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../test.dart';

class CartCubit extends Cubit< CubitCartState> {
  static CartCubit get(context) => BlocProvider.of(context);

  CartCubit() : super(initCartCubit());
  String? refrance;
  File ?file;
  Map<String, dynamic> ? map ;

  getImage() async {
    // final imagePiker = ImagePicker();
    // XFile? image = await imagePiker.pickImage(source: ImageSource.gallery);
     await FirebaseFirestore.instance
          .collection("Product")
          .doc("it97J1rbUn3W3Ynm9lNp")
          .get()
          .then((value) {
        map = value.data();
        print("${map}");
      });

    emit(imageSuceessCartState());
  }


  // imagedesplay() async {
  //   await FirebaseFirestore.instance.collection("Product").doc("it97J1rbUn3W3Ynm9lNp");
  //   emit(imagedesplaySucess());
  // }


  int count = 0;

  plus() {
    count++;
    emit(PlusCart());
  }

  minas() {
    count--;
    emit(minasCart());
  }


}