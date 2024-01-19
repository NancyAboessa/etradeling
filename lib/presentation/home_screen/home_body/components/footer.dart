import 'package:etradeling/presentation/home_screen/Bloc/BlocAppBar.dart';
import 'package:etradeling/presentation/home_screen/Bloc/stateAppBar.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Custom IconBottom.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    AppBarCubit cubit = AppBarCubit.get(context);
    cubit.getFooter();
    return BlocBuilder<AppBarCubit, AppBarState>(builder: (context, state) {
      return Stack(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 200, left: 150),
            child: Row(
              children: [
                Image.asset("assets/imeges/etradeling3-1.png",
                    width: 200, height: 45),
                const SizedBox(
                  width: 150,
                ),
                //two texts
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.join_our,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        AppLocalizations.of(context)!.newsetter,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Container(
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 10),
                      hintText:
                          " ${AppLocalizations.of(context)!.what_yourareLookingfor}",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.6),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 50,
                  color: Colors.orange[600],
                  child: Text(AppLocalizations.of(context)!.subscribe),
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
            child: SizedBox(
              width: 220,
              child: Text(
                "${cubit.fotter}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 200),
            child: Text(
              AppLocalizations.of(context)!.follow_uson,
              style: TextStyle(
                  color: Colors.orange[600], fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 295, left: 200),
                child: Icon(
                  Icons.facebook,
                  color: Colors.orange[600],
                  size: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 295, left: 10),
                child: Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.orange[600],
                  size: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 295, left: 10),
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.orange[600],
                  size: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 295, left: 10),
                child: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.orange[600],
                  size: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 130, left: 610),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.categories,
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
                  AppLocalizations.of(context)!.aboutus,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 130, left: 750),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  AppLocalizations.of(context)!.termsConditions,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  AppLocalizations.of(context)!.privacypolicies,
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
            padding: const EdgeInsets.only(top: 130, left: 950),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.get_The_app,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppLocalizations.of(context)!.app_available_nowon,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                StoreIcon(
                    image: "assets/imeges/googleplay.png",
                    storeName: "Google play"),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                StoreIcon(
                    image: "assets/imeges/applelogo.jpg",
                    storeName: "ApppStore"),
                const SizedBox(
                  height: 10,
                ),
                StoreIcon(
                    image: "assets/imeges/appg.jpeg", storeName: "App Gallery"),
              ],
            ),
          ),
        ],
      );
    });
  }
}
