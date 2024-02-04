import 'package:etradeling/presentation/Contact_screen/custenformfeild.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/footer.dart';
import 'package:flutter/material.dart';

import '../home_screen/appbar.dart';
import '../home_screen/home_body/components/CustomMaterialButtom.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainAppBar(),
            SizedBox(
              height: 1000,
              width: 1800,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: Container(
                    width: 700,
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                               Text(
                                AppLocalizations.of(context)!.knowMore,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                AppLocalizations.of(context)!.contactus,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60,
                                  color: Colors.orange[600],
                                ),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          AppLocalizations.of(context)!.letsUsHearFromYou,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 400,
                          width: 1000,
                          child: Row(
                            children: [
                              Expanded(child: CustemTextFeild()),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.country,
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.whereyoufrom,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        AppLocalizations.of(context)!.message,
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.yourmessageHere,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CustomMaterialButtom(
                            text: AppLocalizations.of(context)!.send,
                            color: Colors.black,
                            coolor: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FooterScreen(),
          ],
        ),
      ),
    );
  }
}
