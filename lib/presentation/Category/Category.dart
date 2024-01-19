import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/Category/widget/card.dart';
import 'package:etradeling/presentation/Productpage/Productpage.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/imageWithText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Productpage/cubit/cubit.dart';
import '../home_screen/appbar.dart';
import 'Cubit/Category Cubit.dart';
import 'Cubit/category state.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.catgory});
  final String? catgory;
  @override
  Widget build(BuildContext context) {
    // print(catgory!);
    CubitCategories cubit = CubitCategories.get(context);
    cubit.category(catgory!);
    cubit.categoryAction();
    cubit.categoryNameCubit();
    return BlocBuilder<CubitCategories, CategoriesState>(
        builder: (context, state) {
      return cubit.proudctlist.isEmpty && state is Empty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MainAppBar(),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 340.0),
                          child: SizedBox(
                            height: 500,
                            width: 200,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    height: 400,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: ListView.builder(
                                        itemCount: cubit.catgoryname.length,
                                        shrinkWrap: true,
                                        itemBuilder: (context, i) {
                                          return Container(
                                              height: 80,
                                              width: 200,
                                              alignment: Alignment.center,
                                              child: RadioListTile(
                                                  groupValue:
                                                      cubit.catgoryname[i],
                                                  value: cubit.catgoryname[i] ==
                                                          catgory
                                                      ? cubit.catgoryname[i]
                                                      : "",
                                                  title: Text(
                                                    cubit.catgoryname[i],
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  onChanged: (value) async {
                                                    await cubit.checkVal();
                                                    context.beamToNamed(
                                                        '/category/${cubit.catgoryname[i]}');
                                                  }));
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10.0, left: 20),
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "category",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 700,
                          width: 850,
                          child: ListView.builder(
                            itemBuilder: (context1, index) {
                              return GestureDetector(
                                  onTap: () async {
                                    await cubit.productid(index);
                                    String id = cubit.productId!;
                                    if (cubit.productId!.isNotEmpty) {
                                      context.beamToNamed('/product/${id}',
                                          data: id);
                                    }
                                  },
                                  child: CardScreen(
                                    map: cubit.proudctlist[index],
                                  ));
                            },
                            itemCount: cubit.proudctlist.length,
                          ),
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
