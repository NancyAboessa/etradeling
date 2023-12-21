import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_screen/appbar.dart';
import '../messages/messengerPage.dart';
import 'adress.dart';
import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';
import 'profile part two.dart';
import 'request.dart';
import 'widget/profile Listview.dart';

class Profile extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController textController = TextEditingController();
  Profile({super.key});
  @override
  Widget build(BuildContext context) {
    List list = [
      ProfileData(),
      const Adress(),
      const Request(),
      const Messenger(),
    ];
    NamesCubit cubit = NamesCubit.get(context);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MainAppBar(),
              Row(
                children: [
                  Listnames(cubit: cubit),
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
