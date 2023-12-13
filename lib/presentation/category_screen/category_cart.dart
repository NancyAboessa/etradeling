import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Productpage/custom Widgets/rating.dart';
import '../auth/bloc/login.cubit.dart';
import '../home_screen/home_body/components/CustomMaterialButtom.dart';
import '../home_screen/home_body/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class category_screen extends StatelessWidget {
  const category_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Apple AirPods With Charging Case White',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10.0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              // overflow:TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Rating(initialRating: 1,itemSize: 12,),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'EGP 2000',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CustomMaterialButtom(
              text: AppLocalizations.of(context)!.add_To_Cart,
               icon: Icons.shopping_cart,
              color: Colors.black,
              coolor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
