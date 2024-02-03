import 'package:etradeling/presentation/post/create_post.dart';
import 'package:etradeling/presentation/profile/profile%20part%20two.dart';
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

  Profile({
    super.key,
    required this.route,
  });
  String? route;
  @override
  Widget build(BuildContext context) {
    List list = [
      ProfileCheck(),
      const Adress(),
      const Request(),
      const Messenger(),
      VendorForm(),
    ];
    List list1 = [
      ProfileCheck(),
      const Adress(),
      const Request(),
      const Messenger(),
      CreatePost(),
    ];
    NamesCubit cubit = NamesCubit.get(context);
    cubit.getData();
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
                  Listnames(
                      cubit: cubit,
                      vandore: cubit.map["isVendore"],
                      route: route!),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: cubit.map["isVendore"] == false
                        ? list[cubit.count]
                        : list1[cubit.count],
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
