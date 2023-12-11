import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(IntitialState());
  static AppBarCubit get(context) => BlocProvider.of(context);
  List list = [];
  String? getimage;
  changecolor() {
    //logic here
    // emit (changecolor);
  }
  mainCategory() async {
    await FirebaseFirestore.instance
        .collection("Categorie")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        list.add(element.data());
      });
    });
    // print(list);
    emit(Catgory());
  }
}
