import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'buttoms1.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Listnames extends StatelessWidget {
  Listnames({
    super.key,
    required this.cubit,
    required this.vandore,
    required this.route,
  });
  String? route;
  NamesCubit cubit;
  bool? vandore;
  // required this.namesCubit, this.input
  // List<ListModel>? namesCubit;
  // int? input;

  @override
  Widget build(BuildContext context) {
    if (route == "profile" || cubit.count == 0) {
      cubit.count = 0;
    }
    if (route == "masseges" || cubit.count == 3) {
      cubit.count = 3;
    }
    if (route == "request" || cubit.count == 2) {
      cubit.count = 2;
    }
    if (route == "myaddres" || cubit.count == 1) {
      cubit.count = 1;
    }
    // if (route == "create") {
    //   cubit.count = 5;
    // }

    return Padding(
      padding: const EdgeInsets.only(left: 150, top: 80, right: 100),
      child: Container(
        height: 600,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border(
              left: BorderSide(
            width: 1.0,
            color: Color(0xff7f26),
          )),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  cubit.Count(0, "");
                },
                child: ButtomList(
                    text: Text(AppLocalizations.of(context)!.my_account),
                    icon: FontAwesomeIcons.user),
              ),
              ButtomList(
                  text: Text(AppLocalizations.of(context)!.my_Orders),
                  icon: FontAwesomeIcons.box),
              GestureDetector(
                onTap: () {
                  cubit.Count(1, "");
                },
                child: ButtomList(
                    text: Text(AppLocalizations.of(context)!.my_Addresses),
                    icon: FontAwesomeIcons.mapLocation),
              ),
              InkWell(
                  onTap: () {
                    cubit.Count(3, "");
                  },
                  child: ButtomList(
                      text: Text(AppLocalizations.of(context)!.messenger),
                      icon: FontAwesomeIcons.comment)),
              GestureDetector(
                onTap: () {
                  cubit.Count(2, "");
                },
                child: ButtomList(
                    text: Text(AppLocalizations.of(context)!.myRequest),
                    icon: Icons.library_books),
              ),
              ButtomList(
                  text: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          if (cubit.map["isVendore"] == true) {
                            context.beamToNamed("/CreatePost");
                          } else {
                            cubit.Count(4, "");
                          }
                        },
                        child: Text(
                          vandore! == true
                              ? "create post"
                              : AppLocalizations.of(context)!
                                  .become_vendor_create_account,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ],
                  ),
                  icon: FontAwesomeIcons.newspaper),
              InkWell(
                onTap: () {
                  context.beamToNamed("/login");
                  cubit.logOut();
                },
                child: ButtomList(
                    text: Text(AppLocalizations.of(context)!.logOut),
                    icon: FontAwesomeIcons.angleRight),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ListView.builder(itemBuilder:(context,index)
//     {
//      return Buttom(namesCubit:namesCubit,);
//     },
//         itemCount: namesCubit.length,
//     );
