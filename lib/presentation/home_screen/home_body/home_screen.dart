import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utls/themes/button/custom image Box.dart';
import '../Bloc/BlocAppBar.dart';
import '../appbar.dart';
import 'components/Custom IconBottom.dart';
import 'components/components.dart';
import 'components/constants.dart';
import 'components/customListView.dart';
import 'components/custom_orange_button.dart';
import 'components/imageWithText.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AppBarCubit cubit = AppBarCubit.get(context);
    cubit.mainCategory();
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
                                          context.beamToNamed(
                                              '/catgory/${cubit.list[index]["name"]}',
                                              data: cubit.list[index]["name"]);
                                        },
                                        child: ImageWithText(
                                          image: cubit.list[index]["image"],
                                          name: cubit.list[index]["name"],
                                        ),
                                      );
                                    },
                                    itemCount: 6,
                                  ),
                                ),
                              ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                imageBox(hight: 150, width: 400),
                                Padding(
                                  padding: EdgeInsets.only(top: 30, left: 30),
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .requestforQuotation,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 70, left: 30),
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .tellSupplierswhatyouneed,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 110, left: 30),
                                  child: CustomOrangeBottom(
                                      text: AppLocalizations.of(context)!
                                          .createpost,
                                      width: 100),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Stack(
                              children: [
                                imageBox(hight: 150, width: 400),
                                Padding(
                                  padding: EdgeInsets.only(top: 30, left: 30),
                                  child: Text(
                                    AppLocalizations.of(context)!.becomeavendor,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 70, left: 30),
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .andReachyourtargetcustomers,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 110, left: 30),
                                  child: CustomOrangeBottom(
                                    text:
                                        AppLocalizations.of(context)!.siguupnow,
                                    width: 110,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        // explore caregore
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                        //apple
                        Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.bestSeller,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            CustomOrangeBottom(
                              text: AppLocalizations.of(context)!.see_all,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 300.0,
                            ),
                            Text("the catgory is empty"),
                            // listViewhome(
                            //   widget: const customContainerWithCircleAvIcon(),
                            //   items: 6,
                            //   left: 0,
                            //   hight: 600,
                            //   width: 870,
                            // ),
                          ],
                        ),
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
                                  width: 1000,
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
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 500, top: 20),
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
                            Stack(
                              children: [
                                const SizedBox(
                                  width: double.infinity,
                                  height: 200,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 700, top: 50),
                                  child: Text(
                                    AppLocalizations.of(context)!.our_partners,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 150, left: 300),
                                  child: Column(
                                    children: [
                                      Column(children: [
                                        listViewhome(
                                          widget: iconwithTextOnly(
                                            text: 'Labore',
                                          ),
                                          items: 6,
                                          left: 200,
                                          hight: 400,
                                          width: 600,
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Stack(
                              children: [
                                Container(
                                  color: Colors.black,
                                  width: double.infinity,
                                  height: 350,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          "assets/imeges/etradeling3-1.png",
                                          width: 200,
                                          height: 45),
                                      const SizedBox(
                                        width: 150,
                                      ),
                                      //two texts
                                      Column(
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!
                                                .join_our,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .newsetter,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Colors.white),
                                          color: Colors.transparent,
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                AppLocalizations.of(context)!
                                                    .what_yourareLookingfor,
                                            hintStyle: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {},
                                        height: 43,
                                        color: Colors.orange[600],
                                        child: Text(
                                            AppLocalizations.of(context)!
                                                .subscribe),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Divider(
                                    color: Colors.white54,
                                    thickness: 1,
                                    height: 200,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 130, left: 200),
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .lorem_Ipsum_is_simply_dummy,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 270, left: 200),
                                  child: Text(
                                    AppLocalizations.of(context)!.follow_uson,
                                    style: TextStyle(
                                        color: Colors.orange[600],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 295, left: 200),
                                  child: Icon(
                                    Icons.facebook,
                                    color: Colors.orange[600],
                                    size: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 130, left: 610),
                                  child: Column(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.home,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!
                                            .categories,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.ourblog,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.contactus,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.aboutus,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 130, left: 750),
                                  child: Column(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.submitRFQ,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!
                                            .my_account,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!
                                            .termsConditions,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!
                                            .privacypolicies,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.fAQ,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 130, left: 950),
                                  child: Column(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!
                                            .get_The_app,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!
                                            .app_available_nowon,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomIconBottom(
                                        text: 'App Store',
                                        icon: Icons.apple,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomIconBottom(
                                        text: 'Google Play',
                                        icon: FontAwesomeIcons.google,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      CustomIconBottom(
                                        text: 'App Gallary',
                                        icon: FontAwesomeIcons.suitcase,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ]),
                  ]),
            )));
    });
  }
}
