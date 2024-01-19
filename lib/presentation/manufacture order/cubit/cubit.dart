import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:etradeling/presentation/manufacture%20order/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactoryCubit extends Cubit<MainFactoryState> {
  FactoryCubit() : super(InitFactoryState());
  static FactoryCubit get(context) => BlocProvider.of(context);
  List orderList = [];
  setFactory(data) {
    FirebaseFirestore.instance.collection("factory").add(data);
  }

  setOrder(data) {
    FirebaseFirestore.instance.collection("order").add(data);
  }

  getAll() async {
    await FirebaseFirestore.instance.collection("factory").get().then((value) {
      value.docs.forEach((element) {
        orderList.add(element.data());
      });
    });
    print(orderList);
    emit(GetFactoryState());
  }
}
