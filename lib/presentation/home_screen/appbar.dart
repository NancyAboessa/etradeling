import 'package:etradeling/presentation/cartPage/cartPage.dart';
import 'package:etradeling/presentation/cartPage/cubit/CartCubit.dart';
import 'package:etradeling/presentation/home_screen/Bloc/BlocAppBar.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/presentation/post/create_post.dart';
import 'package:etradeling/presentation/post/cubit/cubite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../auth/bloc/login.cubit.dart';
import '../profile/Profile.dart';
import '../profile/cubit/names_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.orange[500],
          elevation: 60.0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/imeges/etradeling3-1.png"),
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                        AppLocalizations.of(context)!.search,
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 30),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      var loginCubit;
                      loginCubit.NewPassword();
                    },
                    child:  Text(
                     AppLocalizations.of(context)!.egyptionpound,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Icon(FontAwesomeIcons.circleUser,
                      size: 15, color: Colors.black),
                  SizedBox(
                    width: 5.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => BlocProvider.value(
                                    value:
                                        BlocProvider.of<AppBarCubit>(context),
                                    child: BlocProvider<NamesCubit>(
                                        create: (_) => NamesCubit(),
                                        child: Profile()),
                                  )));
                    },
                    child: const Text(
                      'shehab eldin',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    FontAwesomeIcons.heart,
                    size: 15,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    AppLocalizations.of(context)!.whishlist,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(FontAwesomeIcons.cartShopping,
                      size: 15, color: Colors.black),
                  SizedBox(
                    width: 5.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BlocProvider.value(
                              value: BlocProvider.of<AppBarCubit>(context),
                              child: BlocProvider<CartCubit>(
                                  create: (_) => CartCubit(), child: Cart()),
                            ),
                          ));
                    },
                    child: Text(
                      AppLocalizations.of(context)!.cart,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(FontAwesomeIcons.bell, size: 15, color: Colors.black),
                ],
              ),
            ),
          ],
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: BlocProvider.of<AppBarCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child:  Text(
                    AppLocalizations.of(context)!.home,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child:  Text(
                    AppLocalizations.of(context)!.categories,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child:  Text(
                    AppLocalizations.of(context)!.ourblog,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child:  Text(
                    AppLocalizations.of(context)!.contactus,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child:  Text(
                    AppLocalizations.of(context)!.aboutus,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => BlocProvider.value(
                                    value: BlocProvider.of<PostCubit>(context),
                                    child: CreatePost(),
                                  )));
                    },
                    child: Text(
                      AppLocalizations.of(context)!.submitRFQ,
                      style: TextStyle(
                        color: Colors.orange[600],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
