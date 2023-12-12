import 'package:etradeling/presentation/profile/adrees.dart';
import 'package:etradeling/presentation/profile/profile%20part%20two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_screen/appbar.dart';
import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';
import 'widget/profile Listview.dart';

class Profile extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController textController = TextEditingController();
  Profile({super.key});
  @override
  Widget build(BuildContext context) {
    List list = [ProfileData(), Adress()];
    NamesCubit cubit = NamesCubit.get(context);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MainAppBar(),
              Row(
                children: [
                  Listnames(),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: list[cubit.count],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
