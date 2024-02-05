import 'package:etradeling/utls/themes/color_manager/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class subscirbe extends StatelessWidget {
  const subscirbe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(AppLocalizations.of(context)!.pricePlans,
            style: TextStyle(color: Colors.black,fontSize: 30),),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                Stack(
                  children: [
                    Container(
                      height: 450,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          FonttextStyle.boxShadowStyle()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,),
                      child: Column(
                        children: [
                          Text(AppLocalizations.of(context)!.subscriptionplan,
                          style: FonttextStyle.fontBoldStyle(),
                          ),
                          Text(AppLocalizations.of(context)!.vendorstore,
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.showProducts,
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.respondtoRFQ,
                            style: FonttextStyle.lightTextStyle()
                          ),
                          SizedBox(height: 20,),
                          Text(AppLocalizations.of(context)!.subaccounts,
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.businessverificationsupport,
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.reportandAnalysis,
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.adsWebsiteApp,
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.digitalMarketing,
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.exportopportunity,
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.accountManager,
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text(AppLocalizations.of(context)!.subscriptionfees,
                            style: FonttextStyle.lightTextStyle()
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ],
              ),
              SizedBox(width: 50,),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 450,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            FonttextStyle.boxShadowStyle()
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(AppLocalizations.of(context)!.silver,
                              style: FonttextStyle.fontBoldStyle(),
                            ),
                            Icon(Icons.check,size: 25,),
                            Text('50',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Text(AppLocalizations.of(context)!.twentyMonth,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            SizedBox(height: 20,),
                            Text('0',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.black,),
                            Text(AppLocalizations.of(context)!.annually,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('1',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text(AppLocalizations.of(context)!.medium,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text(AppLocalizations.of(context)!.medium,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('-',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Text('2000',
                                style: FonttextStyle.lightTextStyle()
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],

              ),
              SizedBox(width: 50,),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 450,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            FonttextStyle.boxShadowStyle()
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(AppLocalizations.of(context)!.gold,
                              style: FonttextStyle.fontBoldStyle(),
                            ),
                            Icon(Icons.check,
                              size: 25,
                            ),
                            Text('100',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Text(AppLocalizations.of(context)!.fiftymonthly,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            SizedBox(height: 20,),
                            Text('0',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.black,),
                            Text(AppLocalizations.of(context)!.threeMonthly,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('3',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text(AppLocalizations.of(context)!.high,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text(AppLocalizations.of(context)!.high,
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('-',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Text(AppLocalizations.of(context)!.threethousandpermonth,
                                style: FonttextStyle.lightTextStyle()
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],

              ),
              SizedBox(width: 50,),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 450,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            FonttextStyle.boxShadowStyle()
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(AppLocalizations.of(context)!.platinum,
                              style: FonttextStyle.goldText(),
                            ),
                            Icon(Icons.check,size: 25,color: Colors.orange[600],),
                            Text('200',
                                style:  FonttextStyle.goldlightText()
                            ),
                            Text(AppLocalizations.of(context)!.onehundredpermonth,
                                style: FonttextStyle.goldlightText()
                            ),
                           SizedBox(height: 20,),
                            Text('4',
                                style:  FonttextStyle.goldlightText()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.orange[600],),
                            Text(AppLocalizations.of(context)!.threeMonthly,
                                style: FonttextStyle.goldlightText()
                            ),
                            Text('5',
                                style: FonttextStyle.goldlightText()
                            ),
                            Text(AppLocalizations.of(context)!.suuper,
                                style: FonttextStyle.goldlightText()
                            ),
                            Text(AppLocalizations.of(context)!.suuper,
                                style: FonttextStyle.goldlightText()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.orange[600],),
                            Text(AppLocalizations.of(context)!.fourThousandpermonth,
                                style: FonttextStyle.goldlightText()
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],

              ),

            ],
          ),
        ],
      ),
    );
  }
}
