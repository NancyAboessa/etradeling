import 'package:bloc/bloc.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:etradeling/stateManagement/names_cubit.dart';
import 'package:etradeling/stateManagement/names_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';



class NamesCubit extends Cubit<NamesState> {
  NamesCubit() : super(NamesInitial());

  static NamesCubit get(context)=>BlocProvider.of(context);
  bool _hasBeenPressed = false;


  List<ListModel> names=[
    ListModel(Name: 'My Account'),
    ListModel(Name: 'My Orders'),
    ListModel(Name: 'My Addresses'),
    ListModel(Name: 'Messenger'),
    ListModel(Name: 'My Request'),
    ListModel(Name: 'Become Vender Create account'),
    ListModel(Name: 'Log out'),
  ];
  getnameCubit(names)
  {
    ListModel(Name: names);
    emit(getnammesState());
  }
   getcolor()
   {
     _hasBeenPressed = !_hasBeenPressed;
     emit(colorchange());
   }
}
