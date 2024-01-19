import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/footer.dart';
import 'package:etradeling/presentation/manufacture%20order/display%20Post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_screen/appbar.dart';
import 'cubit/cubit.dart';
import 'cubit/state.dart';
import 'widget/user_list.dart';

class ListOfFuctory extends StatelessWidget {
  const ListOfFuctory({super.key});
  @override
  Widget build(BuildContext context) {
    FactoryCubit cubit = FactoryCubit.get(context);
    cubit.getAll();
    return BlocBuilder<FactoryCubit, MainFactoryState>(
        builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MainAppBar(),
              Container(
                constraints: BoxConstraints(maxHeight: 650.0, minHeight: 200),
                child: ListView.builder(
                    itemCount: cubit.orderList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            context.beamToNamed("/Request_of_quotation");
                          },
                          child: UserList(
                            text: cubit.orderList[index]["text"],
                            userName: "",
                            title: cubit.orderList[index]["title"],
                          ));
                    }),
              ),
              FooterScreen(),
            ],
          ),
        ),
      );
    });
  }
}
