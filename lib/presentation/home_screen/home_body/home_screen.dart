import 'package:beamer/beamer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc/BlocAppBar.dart';
import '../appbar.dart';
import 'components/components.dart';
import 'components/constants.dart';
import 'components/customListView.dart';
import 'components/footer.dart';
import 'components/imageWithText.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AppBarCubit cubit = AppBarCubit.get(context);
    cubit.mainCategory();
    CarouselController carouselController = CarouselController();
    return BlocBuilder<AppBarCubit, AppBarState>(builder: (context, state) {
      return cubit.list.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              body: SingleChildScrollView(
                  child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // best seller ,see all,circle avatar/ apple /
                    Column(children: [
                      const MainAppBar(),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 400.0,
                          viewportFraction: 1,
                        ),
                        carouselController: carouselController,
                        items: [
                          "https://firebasestorage.googleapis.com/v0/b/etradeling-18174.appspot.com/o/uploads%2F2024-01-13?alt=media&token=8d7e557c-d2ed-4923-ab43-b9163a0757e5",
                          "https://firebasestorage.googleapis.com/v0/b/etradeling-18174.appspot.com/o/uploads%2F2024-01-13?alt=media&token=8d7e557c-d2ed-4923-ab43-b9163a0757e5",
                          "https://firebasestorage.googleapis.com/v0/b/etradeling-18174.appspot.com/o/uploads%2F2024-01-13?alt=media&token=8d7e557c-d2ed-4923-ab43-b9163a0757e5",
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(i),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 150.0, left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            carouselController.previousPage();
                                          },
                                          child: Icon(Icons.arrow_back_ios),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            carouselController.nextPage();
                                          },
                                          child: Icon(
                                              Icons.arrow_forward_ios_outlined),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(children: [
                        // List View AirPods
                        Text(
                          AppLocalizations.of(context)!.exploreourCategories,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 50.0,
                          ),
                        ),
                        cubit.list.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: SizedBox(
                                  height: 350 * cubit.list.length / 3,
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
                                          context.beamToNamed(
                                              'category/${cubit.list[index]["name"]}',
                                              data: cubit.list[index]["name"]);
                                        },
                                        child: ImageWithText(
                                          image: cubit.list[index]["image"],
                                          name: cubit.list[index]["name"],
                                        ),
                                      );
                                    },
                                    itemCount: cubit.list.length,
                                  ),
                                ),
                              ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 340.0),
                              child: Container(
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("RQF"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("the sublies you need"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.beamToNamed("/factor_oreder");
                                      },
                                      child: Container(
                                        width: 80,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.orange,
                                        ),
                                        child: Text("RQF",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Container(
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("PLM"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("the sublies you need"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.beamToNamed("/PLM");
                                      },
                                      child: Container(
                                        width: 80,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.orange,
                                        ),
                                        child: Text("PLM",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        //apple
                        // Column(
                        //   children: [
                        //     Text(
                        //       AppLocalizations.of(context)!.bestSeller,
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 40.0,
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        //     const SizedBox(
                        //       height: 50,
                        //     ),
                        //     CustomOrangeBottom(
                        //       text: AppLocalizations.of(context)!.see_all,
                        //       width: 70,
                        //     ),
                        //     const SizedBox(
                        //       height: 30,
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   children: [
                        //     const SizedBox(
                        //       width: 300.0,
                        //     ),
                        //     Text("the catgory is empty"),
                        //     // listViewhome(
                        //     //   widget: const customContainerWithCircleAvIcon(),
                        //     //   items: 6,
                        //     //   left: 0,
                        //     //   hight: 600,
                        //     //   width: 870,
                        //     // ),
                        //   ],
                        // ),
                        const SizedBox(
                          height: 100.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //our benefits
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 400,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: 1200,
                                  height: 300,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                                //Text our benifits
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 190, right: 30),
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .ourBenefite,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //Icons
                                Positioned(
                                  left: 300,
                                  top: 180,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      iconColom(
                                        text: AppLocalizations.of(context)!
                                            .we_Provide_all_agricultural_products,
                                        texttwo: AppLocalizations.of(context)!
                                            .browse_bycategories,
                                        icon: Icons.category,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      iconColom(
                                        text: AppLocalizations.of(context)!
                                            .to_ensure_a_perfect_customere,
                                        texttwo: AppLocalizations.of(context)!
                                            .fastdelivery,
                                        icon: Icons.fire_truck,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      iconColom(
                                        text: AppLocalizations.of(context)!
                                            .we_target_all_segments_both_business_or,
                                        texttwo: AppLocalizations.of(context)!
                                            .easy_payment_options,
                                        icon: Icons.wallet,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                const SizedBox(
                                  width: double.infinity,
                                  height: 100,
                                ),
                                Positioned(
                                  left: 700,
                                  top: 50,
                                  child: Text(
                                    AppLocalizations.of(context)!.our_partners,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 100),
                                Column(
                                  children: [
                                    Column(children: [
                                      Center(
                                        child: listViewhome(
                                          widget: iconwithTextOnly(
                                            text: AppLocalizations.of(context)!
                                                .labore,
                                          ),
                                          items: 6,
                                          left: 200,
                                          hight: 400,
                                          width: 600,
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            FooterScreen(),
                          ],
                        ),
                      ]),
                    ]),
                  ]),
            )));
    });
  }
}
