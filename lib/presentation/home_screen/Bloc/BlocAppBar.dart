import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarCubit extends Cubit< AppBarState> {
  AppBarCubit() : super(IntitialState());

  static AppBarCubit get(context) => BlocProvider.of(context);

  changecolor(){

    //logic here
   // emit (changecolor);
  }
}

//    var cubit = PostCubit.get(context);