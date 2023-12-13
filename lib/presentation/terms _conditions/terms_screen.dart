import 'package:etradeling/presentation/home_screen/home_body/components/CustomMaterialButtom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Terms_Screen extends StatelessWidget {
  const Terms_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 700,
            alignment: Alignment.center,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.we_dLoveto_helpyou,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,

                        ),
                        Text(
                          AppLocalizations.of(context)!.termsConditions,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.orange[600],
                          ),
                        ),
                      ],
                    ),



                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:800 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.how_Can_i_paythis_products_online,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          AppLocalizations.of(context)!.its_that_time_again_when_people_startthinking ,
                          maxLines:25,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),

        ),

      ),
    );
  }
}
