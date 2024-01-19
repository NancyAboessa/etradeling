import 'package:etradeling/presentation/profile/profile%20part%20two.dart';
import 'package:etradeling/presentation/profile/vendorProfile.dart';
import 'package:etradeling/presentation/profile/vendore_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_screen/appbar.dart';
import '../messages/messengerPage.dart';
import 'adress.dart';
import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';
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
      VendorForm(),
    ];
    NamesCubit cubit = NamesCubit.get(context);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return Scaffold(
        body: Column(
          children: [
            const MainAppBar(),
            SizedBox(
              height: 620,
              width: 2000,
              child: Row(
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
            ),
          ],
        ),
      );
    });
  }
}
