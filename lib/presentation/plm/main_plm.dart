import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/manufacture%20order/cubit/cubit.dart';
import 'package:etradeling/presentation/manufacture%20order/cubit/state.dart';
import 'package:etradeling/presentation/manufacture%20order/widget/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_screen/home_body/components/footer.dart';

class PlmOrder extends StatelessWidget {
  PlmOrder({super.key});
  @override
  Widget build(BuildContext context) {
    FactoryCubit cubit = FactoryCubit.get(context);
    cubit.getAllPLM();
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
                            context.beamToNamed("/plm/${cubit.userId[index]}");
                          },
                          child: UserList(
                            text: cubit.orderList[index]["Details"],
                            userName: cubit.orderList[index]["name"],
                            title: cubit.orderList[index]["product_name"],
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
