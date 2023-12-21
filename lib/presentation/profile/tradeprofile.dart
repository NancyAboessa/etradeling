import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_screen/appbar.dart';
import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';

class TradeProfile extends StatelessWidget {
  const TradeProfile({super.key, required this.tradeProfile});
  final String? tradeProfile;
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    cubit.getTradeData(tradeProfile);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const MainAppBar(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.7),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black26,
                        )),
                    child: cubit.map["image"] != null && cubit.map.isNotEmpty
                        ? Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(cubit.map["image"]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : const Text(""),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                    ),
                    child: Text(
                      cubit.map["name"] != null && cubit.map.isNotEmpty
                          ? cubit.map["name"]
                          : "name",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 800.0),
                    child: InkWell(
                      onTap: () async {
                        await cubit.createRomeCubit(tradeProfile!);
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "chat now",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      );
    });
  }
}
