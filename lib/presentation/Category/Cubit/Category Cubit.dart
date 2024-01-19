import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category state.dart';

class CubitCategories extends Cubit<CategoriesState> {
  CubitCategories() : super(InitialCubitState());

  static CubitCategories get(context) => BlocProvider.of(context);
  List proudctlist = [];
  List proudctlistid = [];
  String? valCategories;
  String? productId;
  List catgoryname = [];
  String? x;
  bool change = true;
  dropDownCategory(value) {
    valCategories = value;
    emit(DropdounCategoriesState());
  }

  category(catgory) async {
    emit(Empty());
    change = true;
    proudctlist = [];
    await FirebaseFirestore.instance.collection("Product").get().then((value) {
      value.docs.forEach((element) {
        if (element.data()["unit"] == catgory &&
            element.data()["ispending"] == true) {
          print(element.data());
          proudctlist.add(element.data());
          proudctlistid.add(element.id);
        }
      });
    });
    // print(proudctlist);
    emit(MainCatgory());
  }

  categoryAction() async {
    await FirebaseFirestore.instance.collection("UserAction").add({
      "user": FirebaseAuth.instance.currentUser!.uid,
      "action": "category",
    });
    // print(proudctlist);
    emit(CategoryActionState());
  }

  myCategory() async {
    emit(Empty());
    proudctlist = [];
    await FirebaseFirestore.instance
        .collection("Product")
        .where("user", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        if (element.data()["ispending"] == true) {
          print(element.data());
          proudctlist.add(element.data());
          proudctlistid.add(element.id);
        }
      });
    });
    // print(proudctlist);
    emit(MeCatgory());
  }

  productid(id) async {
    productId = proudctlistid[id];
    emit(ProductId());
  }

  categoryNameCubit() async {
    FirebaseFirestore.instance.collection("Categorie").get().then((value) {
      value.docs.forEach((element) {
        catgoryname.add(element["name"]);
      });
    });
    emit(CategoryNameState());
  }

  checkVal() async {
    change = false;
    emit(CheckValState());
  }
}
//    var cubit = CartCubit.get(context);
// bloc builder
//
