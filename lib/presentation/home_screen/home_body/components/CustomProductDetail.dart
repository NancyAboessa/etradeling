import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../utls/themes/button/MaterialButtom.dart';
import '../../../Productpage/custom Widgets/rating.dart';

class CustomProductDetail extends StatelessWidget {
  const CustomProductDetail({
    super.key,
    required this.map,
  });
  final Map<String, dynamic> map;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.appleAirPodsWithChargingCaseWhite,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10.0,
              ),
              maxLines: 2,
              // overflow:TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Rating(
                initialRating: 1,
                itemSize: 12,
              ),
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
              text:  AppLocalizations.of(context)!.add_To_Cart,
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
