import 'package:etradeling/utls/themes/color_manager/textstyle.dart';
import 'package:flutter/material.dart';

class subscirbe extends StatelessWidget {
  const subscirbe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Price Plans',
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
                          Text('Subscription plan',
                          style: FonttextStyle.fontBoldStyle(),
                          ),
                          Text('Vendor store',
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text('Show Products',
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text('Respond to RFQ',
                            style: FonttextStyle.lightTextStyle()
                          ),
                          SizedBox(height: 20,),
                          Text('Subaccounts',
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text('Business verification support',
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text('Report and Analysis',
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text('Ads Website & App',
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text('Digital Marketing',
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text('Export opportunity',
                            style: FonttextStyle.lightTextStyle()
                          ),
                          Text('Account Manager',
                            style:  FonttextStyle.lightTextStyle()
                          ),
                          Text('Subscription fees',
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
                            Text('Silver',
                              style: FonttextStyle.fontBoldStyle(),
                            ),
                            Icon(Icons.check,size: 25,),
                            Text('50',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Text('20/Month',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            SizedBox(height: 20,),
                            Text('0',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.black,),
                            Text('Annually',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('1',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('Medium',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('Medium',
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
                            Text('Gold',
                              style: FonttextStyle.fontBoldStyle(),
                            ),
                            Icon(Icons.check,
                              size: 25,
                            ),
                            Text('100',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Text('50/Month',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            SizedBox(height: 20,),
                            Text('0',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.black,),
                            Text('3-Monthly',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('3',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('High',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('High',
                                style: FonttextStyle.lightTextStyle()
                            ),
                            Text('-',
                                style:  FonttextStyle.lightTextStyle()
                            ),
                            Text('3000/m',
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
                            Text('Platinum',
                              style: FonttextStyle.goldText(),
                            ),
                            Icon(Icons.check,size: 25,color: Colors.orange[600],),
                            Text('200',
                                style:  FonttextStyle.goldlightText()
                            ),
                            Text('100/Month',
                                style: FonttextStyle.goldlightText()
                            ),
                           SizedBox(height: 20,),
                            Text('4',
                                style:  FonttextStyle.goldlightText()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.orange[600],),
                            Text('3-monthly',
                                style: FonttextStyle.goldlightText()
                            ),
                            Text('5',
                                style: FonttextStyle.goldlightText()
                            ),
                            Text('Super',
                                style: FonttextStyle.goldlightText()
                            ),
                            Text('Super',
                                style: FonttextStyle.goldlightText()
                            ),
                            Icon(Icons.check,size: 30,color: Colors.orange[600],),
                            Text('4500/m',
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
