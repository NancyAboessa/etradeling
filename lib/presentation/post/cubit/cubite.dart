import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class PostCubit extends Cubit<PostMainState> {
  PostCubit() : super(PostInit());
  static PostCubit get(context) => BlocProvider.of(context);
  String? val;
  int count = 0;
  dropDown(value) {
    val = value;
    emit(DropDownState());
  }

  plus() {
    count++;
    emit(Plus());
  }

  minas() {
    count--;
    emit(Minas());
  }
}
