import 'package:bloc/bloc.dart';
import 'package:etradeling/models/listModel.dart';
import 'package:meta/meta.dart';

part 'names_state.dart';

class NamesCubit extends Cubit<NamesState> {
  NamesCubit() : super(NamesInitial());
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
   getcolor()
   {
     _hasBeenPressed = !_hasBeenPressed;

   }
}
