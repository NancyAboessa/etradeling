import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(IntitialState());
  static AppBarCubit get(context) => BlocProvider.of(context);
  List list = [];
  String? getimage;
  String fotter = "";
  List AboutAsList = [];
  changecolor() {
    //logic here
    // emit (changecolor);
  }
  mainCategory() async {
    await FirebaseFirestore.instance
        .collection("Categorie")
        .get()
        .then((value) {
      list = [];
      value.docs.forEach((element) {
        list.add(element.data());
      });
    });
    // print(list);
    emit(Catgory());
  }

  getFooter() {
    FirebaseFirestore.instance.collection("Footer").get().then((value) {
      fotter = value.docs.last["footer"];
    });
    emit(GetFooter());
  }

  getAboutAs() async {
    FirebaseFirestore.instance.collection("about_as").get().then((value) {
      value.docs.forEach((element) {
        AboutAsList.add(element);
      });
    });
    emit(AboutAsState());
  }
}
