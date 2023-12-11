import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category state.dart';

class CubitCategories extends Cubit<CategoriesState> {
  CubitCategories() : super(InitialCubitState());
  static CubitCategories get(context) => BlocProvider.of(context);
  List proudctlist = [];
  String? valCategories;
  dropDownCategory(value) {
    valCategories = value;
    emit(DropdounCategoriesState());
  }

  category(catgory) async {
    emit(Empty());
    proudctlist = [];
    await FirebaseFirestore.instance.collection("Product").get().then((value) {
      value.docs.forEach((element) {
        if (element.data()["unit"] == catgory) {
          proudctlist.add(element.data());
        }
      });
    });
    // print(proudctlist);
    emit(MainCatgory());
  }
}

//    var cubit = CartCubit.get(context);
// bloc builder
//
