import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utls/themes/button/MaterialButtom.dart';
import '../../Productpage/custom Widgets/rating.dart';
import '../../home_screen/home_body/components/CustomProductDetail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({
    super.key,
    required this.map,
  });
  final Map<String, dynamic>? map;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 100, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: .2, color: Colors.black),
          ),
          child: Row(
            children: [
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(width: .2, color: Colors.black),
                  image: DecorationImage(
                    image: NetworkImage(map!["firstImage"]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${map!["Product_Name"]}",
                        style: TextStyle(fontSize: 16)),
                    SizedBox(
                      height: 30,
                    ),
                    Rating(
                      initialRating: 1,
                      itemSize: 15,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("${map!["Quantity"]}"),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        // cubit.sendCatgory({
                        //   "user": map!["user"],
                        //   "image": map!["Company_Certificate"],
                        //   "name": map!["Product_Name"],
                        //   "price": map!["Max_Budget"],
                        // });
                      },
                      child: CustomMaterialButtom(
                        text: AppLocalizations.of(context)!.add_To_Cart,
                        icon: Icons.shopping_cart,
                        color: Colors.black,
                        coolor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
