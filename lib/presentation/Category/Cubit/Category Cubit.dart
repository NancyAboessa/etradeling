 import 'package:flutter_bloc/flutter_bloc.dart';
import 'category state.dart';

class CubitCategories extends Cubit<CategoriesState>{
  CubitCategories() : super(InitialCubitState());
  static CubitCategories get(context) => BlocProvider.of(context);

  String ?valCategories;
  dropDownCategory(value) {
    valCategories = value;
    emit(DropdounCategoriesState());
  }


}

//    var cubit = CartCubit.get(context);
 // bloc builder
 //