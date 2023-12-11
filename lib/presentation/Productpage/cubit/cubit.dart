import 'package:etradeling/presentation/Productpage/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitProduct extends Cubit<CubitProductState> {
  CubitProduct() : super(initCubit());
  static CubitProduct get(context) => BlocProvider.of(context);
  int count = 0;
  plus() {
    count++;
    emit(Plus());
  }

  minas() {
    count--;
    emit(Mnus());
  }
}
