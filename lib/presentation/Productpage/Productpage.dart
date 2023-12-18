import 'package:etradeling/presentation/Productpage/cubit/cubit.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/utls/themes/button/custom%20image%20Box.dart';
import 'package:etradeling/presentation/post/widget/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cubit/state.dart';
import '../../utls/themes/button/MaterialButtom.dart';
import 'custom Widgets/rating.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});
  final String product;
  @override
  Widget build(BuildContext context) {
    var cubit = CubitProduct.get(context);
    cubit.getData(product);
    return product.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : BlocBuilder<CubitProduct, CubitProductState>(
            builder: (context, state) {
            return cubit.mapProduct.isEmpty && cubit.mapUser.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.orange[600],
                    ),
                    body: Padding(
                      padding: const EdgeInsets.only(left: 100, top: 50),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          imageBox(
                            width: 70,
                            hight: 100,
                            image: cubit.mapProduct["Product_Certificate"],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          imageBox(
                            width: 250,
                            hight: 330,
                            image: cubit.mapProduct["Company_Certificate"],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 20),
                            child: Column(
                              //  crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, right: 150),
                                  child: Text(
                                      '${cubit.mapProduct["Product_Name"]}'),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Rating(
                                  initialRating: 1,
                                  itemSize: 15,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.now,
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                          '${AppLocalizations.of(context)!.eGP} ${cubit.mapProduct["Max_Budget"]}'),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 80),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 25),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .quantity,
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
                                        minasFunction: cubit,
                                        plasFunction: cubit,
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
                                InkWell(
                                  onTap: () {
                                    cubit.sendCatgory({
                                      "user": cubit.mapProduct["user"],
                                      "image": cubit
                                          .mapProduct["Company_Certificate"],
                                      "name": cubit.mapProduct["Product_Name"],
                                      "price": cubit.mapProduct["Max_Budget"],
                                    });
                                  },
                                  child: CustomMaterialButtom(
                                    text: AppLocalizations.of(context)!
                                        .add_To_Cart,
                                    icon: Icons.shopping_cart,
                                    color: Colors.black,
                                    coolor: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 320,
                            child: VerticalDivider(
                              color: Colors.black26,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 60, right: 150),
                                  child: Text(
                                    '${AppLocalizations.of(context)!.eGP} ${cubit.mapProduct["Max_Budget"]}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 60),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .share_Product,
                                          style:
                                              TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                color: Colors.orange[600],
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Icon(
                                                Icons.facebook,
                                                color: Colors.white,
                                              )),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                color: Colors.orange[600],
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Icon(
                                                FontAwesomeIcons.x,
                                                color: Colors.white,
                                              )),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                color: Colors.orange[600],
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Icon(
                                                FontAwesomeIcons.whatsapp,
                                                color: Colors.white,
                                              )),
                                          //x-twitter
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(height: 10,),
                                //Divider(
                                //   height: 50,
                                //   color: Colors.black,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 110, top: 20),
                                  child: Row(
                                    children: [
                                      // Container(
                                      //   decoration: BoxDecoration(
                                      //       shape: BoxShape.circle,
                                      //       border: Border.all(
                                      //           color: Colors.orange)),
                                      //   child: InkWell(
                                      //     onTap: () async {},
                                      //     child: CircleAvatar(
                                      //       backgroundColor: Colors.black12,
                                      //       child: Image.network(
                                      //           cubit.mapUser["image"]),
                                      //     ),
                                      //   ),
                                      // ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          // Text(cubit.mapUser["name"]),
                                          Text(
                                            '( )',
                                            style: TextStyle(
                                              color: Colors.black12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomMaterialButtom(
                                  text:
                                      AppLocalizations.of(context)!.viewProfile,
                                  color: Colors.white,
                                  coolor: Colors.black,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => HomeScreen()));
                                  },
                                  child: CustomMaterialButtom(
                                    text:
                                        AppLocalizations.of(context)!.chat_Now,
                                    color: Colors.white,
                                    coolor: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          });
  }
}

//
