import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Custom IconBottom.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          height: 350,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 200,left: 150),
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
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      AppLocalizations.of(context)!.newsetter,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                height: 35,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.white),
                  color: Colors.transparent,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText:
                        AppLocalizations.of(context)!.what_yourareLookingfor,
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
              " ${AppLocalizations.of(context)!.lorem_Ipsum_is_simply_dummy}",
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
            children: [
              Text(
                AppLocalizations.of(context)!.home,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
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
                AppLocalizations.of(context)!.my_account,
                style: TextStyle(color: Colors.white),
              ),
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
    );
  }
}
