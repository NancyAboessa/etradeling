import 'package:etradeling/presentation/cartPage/cubit/CartCubit.dart';
import 'package:etradeling/presentation/cartPage/widgets/TextRow.dart';
import 'package:etradeling/utls/themes/button/custom%20image%20Box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utls/themes/button/MaterialButtom.dart';
import '../Productpage/custom Widgets/rating.dart';
import '../post/widget/counter.dart';
import 'cubit/CartState.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartCubit cubit = CartCubit.get(context);
    cubit.getUserData();
    return BlocBuilder<CartCubit, CubitCartState>(
      builder: (context, state) {
        return cubit.list.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.orange[600],
                ),
                body: SingleChildScrollView(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 800,
                        width: 1000,
                        child: ListView.builder(
                            itemCount: cubit.list.length,
                            itemBuilder: (context, i) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //cart Text and Image.
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50, top: 100),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 250),
                                          child: Text(
                                            AppLocalizations.of(context)!.cart   ,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        imageBox(
                                          hight: 230,
                                          width: 300,
                                          image: cubit.list[i]["image"],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 80, left: 20),
                                    child: Column(
                                      //  crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 60, right: 150),
                                          child: Text(cubit.list[i]["name"]),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 30),
                                          child: Rating(
                                            initialRating: 1,
                                            itemSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 120),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)!.eGP,
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                  '${AppLocalizations.of(context)!.eGP} ${cubit.list[i]["Max_Budget"]}'),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 80),
                                          child: Row(
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)!.arrives,
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                'Oct 22 - Now 10',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 70),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 25),
                                                child: Text(
                                                  AppLocalizations.of(context)!.quantity,
                                                  style: TextStyle(
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Counter(
                                                left: 0,
                                                text: '',
                                                width: 25,
                                                minasFunction: cubit.minas(),
                                                plasFunction: cubit.plus(),
                                                count: cubit.count,
                                                hight: 25,
                                                widthtt: 0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CustomMaterialButtom(
                                          text: AppLocalizations.of(context)!.add_To_Wishlist,
                                          icon: FontAwesomeIcons.heart,
                                          color: Colors.black,
                                          coolor: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        //Text('hi'),
                                        Divider(
                                          color: Colors.black,
                                          thickness: 1,
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 200),
                        child: Stack(
                          children: [
                            Container(
                              height: 300,
                              width: 250,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.black12,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 35,
                                left: 10,
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.order_Summary,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 75, left: 5),
                              child: Row(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(color: Colors.black26),
                                      color: Colors.transparent,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: AppLocalizations.of(context)!.enter_a_PromoCode,
                                        hintStyle: TextStyle(
                                          color: Colors.black26,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    height: 43,
                                    color: Colors.black,
                                    child: Text(
                                      AppLocalizations.of(context)!.aPPLY,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 130, left: 5),
                              child: Column(
                                children: [
                                  TextRow(
                                    textone: AppLocalizations.of(context)!.subTotal,
                                    texttwo: 'EGP 200',
                                    width: 70,
                                    colorone: Colors.black26,
                                    colortwo: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextRow(
                                    textone: AppLocalizations.of(context)!.promo,
                                    texttwo: 'EGP 0,0',
                                    width: 130,
                                    colorone: Colors.black26,
                                    colortwo: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextRow(
                                    textone: AppLocalizations.of(context)!.delivary,
                                    texttwo: 'EGP 0,0',
                                    width: 130,
                                    colorone: Colors.black26,
                                    colortwo: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 210),
                              child: Divider(
                                color: Colors.black,
                                thickness: 1,
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 230),
                              child: CustomMaterialButtom(
                                  text: AppLocalizations.of(context)!.proceed_to_Checkout,
                                  color: Colors.black,
                                  coolor: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
