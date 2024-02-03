import 'package:etradeling/presentation/home_screen/home_body/components/CustomMaterialButtom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ourblog_screen extends StatelessWidget {
  const ourblog_screen({super.key});

  get suffixIcon => null;

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
                          AppLocalizations.of(context)!.we_wouldhelpyou,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .frequently_askedquestions,
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
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .how_Can_i_paythis_products_online,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .we_are_thefirst_ecommerceplatformrrrrr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .how_can_I_make_apurchaseontheetradelingplatform,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .you_can_start_first_byvisiting_thehomepage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .are_there_subscription_plans_for_thebuyer_ontheetradelingplatform,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .there_are_no_subscription_plans_for_thebuyerandthere,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .how_Can_i_paythis_products_online,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .we_are_thefirst_ecommerceplatformrrrrr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .does_the_etradeling_platform_provide_shippingservices,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .yestheplatform_provides_various_shipping_services_and_it,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .how_does_theetradeling_platform_help_increase_mybusiness,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .theetradeling_platform_helps_businesses_open_newmarkets,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height: 70,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .does_theetradeling_platform_help_in_the_export_process,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .inline_with_Egyptsvision_to_increase_exportswe_provide,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomMaterialButtom(
                  text: AppLocalizations.of(context)!.see_all,
                  color: Colors.black,
                  coolor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
