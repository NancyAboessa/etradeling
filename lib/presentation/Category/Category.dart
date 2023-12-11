import 'package:etradeling/presentation/Productpage/Productpage.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/imageWithText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Productpage/cubit/cubit.dart';
import 'Cubit/Category Cubit.dart';
import 'Cubit/category state.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.catgory});
  final String? catgory;
  @override
  Widget build(BuildContext context) {
    CubitCategories cubit = CubitCategories.get(context);
    cubit.category(catgory!);
    return BlocBuilder<CubitCategories, CategoriesState>(
        builder: (context, state) {
      return cubit.proudctlist.isEmpty && state is Empty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Divider(
                      color: Colors.black38,
                      indent: 500,
                      endIndent: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '7 products found',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 700,
                          width: 1000,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              // Number of columns
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return BlocProvider.value(
                                      value: BlocProvider.of<CubitProduct>(
                                          context),
                                      child: Product(
                                          product: cubit.proudctlist[index]),
                                    );
                                  }));
                                },
                                child: ImageWithText(
                                  image: cubit.proudctlist[index]
                                      ["Product_Certificate"],
                                  name: cubit.proudctlist[index]
                                      ["Product_Name"],
                                ),
                              );
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
