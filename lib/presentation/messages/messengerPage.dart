import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile/cubit/names_cubit.dart';
import '../profile/cubit/names_state.dart';
import 'chatscreen/chatingscreen.dart';

class Messenger extends StatelessWidget {
  const Messenger({super.key});
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    cubit.getProfie();
    cubit.GetMassenger();
    final TextEditingController controllerText = TextEditingController();
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return cubit.listMaseges.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: Row(
                children: [
                  // Listnames(),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 40, bottom: 155),
                              child: Container(
                                // padding: EdgeInsets.only(left: 350),
                                width: 300,
                                height: 350,
                              ),
                            ),
                            Container(
                              width: 1000,
                              height: 400,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: SizedBox(
                                              width: 500,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintText: 'Search Messeges',
                                                  hintStyle: TextStyle(
                                                    color: Colors.black38,
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    color: Colors.black38,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black38),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 200,
                                            width: 500,
                                            child: ListView.builder(
                                                itemCount:
                                                    cubit.listMaseges.length,
                                                itemBuilder: (context, i) {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30.0,
                                                            top: 10),
                                                    child: Text(
                                                      cubit.listMaseges[i]
                                                          ["name"],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Chating(
                                      receiver: cubit.listUsresMaseges[0],
                                      controllerText: controllerText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
    });
  }
}
// Padding(
// padding: const EdgeInsets.only(right: 50,bottom: 175,),
// child: Container(
// height: 400,
// width: 300,
// child: Chating()),
// ),
