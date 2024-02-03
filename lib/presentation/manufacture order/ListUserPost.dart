import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_screen/appbar.dart';
import '../home_screen/home_body/components/footer.dart';
import 'cubit/cubit.dart';
import 'cubit/state.dart';
import 'display Post.dart';

class ListUserPost extends StatelessWidget {
  final String? id;
  const ListUserPost({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    FactoryCubit cubit = FactoryCubit.get(context);
    TextEditingController commentController = TextEditingController();
    cubit.getRFQ(id!);
    cubit.getProfile();
    cubit.getRFQCommint(id);
    return Scaffold(
      body: BlocBuilder<FactoryCubit, MainFactoryState>(
          builder: (context, state) {
        return cubit.mapRFQ.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    const MainAppBar(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, right: 40.0, top: 20, bottom: 40),
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        color: Colors.grey.shade200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cubit.mapRFQ["Product_Name"],
                                style: const TextStyle(
                                  fontSize: 20,
                                )),
                            Text(cubit.mapRFQ["name"],
                                style: const TextStyle(
                                  fontSize: 20,
                                )),
                            Text(cubit.mapRFQ["Max_Budget"],
                                style: const TextStyle(
                                  fontSize: 15,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40),
                      child: TextField(
                        controller: commentController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "commint",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 1350),
                      child: InkWell(
                        onTap: () {
                          cubit.sendCommint(id, {
                            "id": FirebaseAuth.instance.currentUser!.uid,
                            "name": cubit.userName,
                            "commint": commentController.text,
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Text("commint"),
                        ),
                      ),
                    ),
                    ListView.builder(
                        itemCount: cubit.commintList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return state is LoadCommintState
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : DisplayFactory(
                                  map: cubit.commintList[index],
                                );
                        }),
                    const FooterScreen(),
                  ],
                ),
              );
      }),
    );
  }
}
