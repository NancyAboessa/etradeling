import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/Category/widget/card.dart';
import 'package:etradeling/presentation/Productpage/Productpage.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/imageWithText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Category/Cubit/Category Cubit.dart';
import '../Category/Cubit/category state.dart';
import '../Productpage/cubit/cubit.dart';
import '../home_screen/appbar.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key, required this.catgory});
  final String? catgory;
  @override
  Widget build(BuildContext context) {
    // print(catgory!);
    print("x");
    CubitCategories cubit = CubitCategories.get(context);
    cubit.myCategory();
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
