import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/home_screen/home_body/components/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_screen/appbar.dart';
import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TradeProfile extends StatelessWidget {
  const TradeProfile({super.key, required this.tradeProfile});
  final String? tradeProfile;
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    cubit.getTradeData(tradeProfile!);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return cubit.map.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const MainAppBar(),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            width: 150,
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.7),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      context.beamToNamed(
                                          "/trade_profile/${tradeProfile}",
                                          data: tradeProfile);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.account_circle_outlined,
                                            color: Colors.orange),
                                        Text( AppLocalizations.of(context)!.aboutus),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      context.beamToNamed(
                                          "/meProduct/${tradeProfile}",
                                          data: tradeProfile);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.shopping_basket_outlined,
                                            color: Colors.orange),
                                        Text(
                                          AppLocalizations.of(context)!.myProduct,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      context.beamToNamed(
                                          "/tradecontactas/${tradeProfile}",
                                          data: tradeProfile);
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.contact_support_outlined,
                                            color: Colors.orange),
                                        Text( AppLocalizations.of(context)!.contactus),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.black26,
                                        )),
                                    child: cubit.map["image"] != null &&
                                            cubit.map.isNotEmpty
                                        ? Container(
                                            height: 100,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    cubit.map["image"]),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        : const Text(""),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10.0,
                                      top: 10.0,
                                    ),
                                    child: Text(
                                      cubit.map["factoryName"] != null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["factoryName"]
                                          : "factoryName",
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Text( AppLocalizations.of(context)!.about,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Row(children: [
                                        Text( AppLocalizations.of(context)!.businessType,
                                            style: TextStyle(
                                              fontSize: 20,
                                            )),
                                        SizedBox(width: 50),
                                        Text( AppLocalizations.of(context)!.businessservice,
                                            style: TextStyle(
                                              fontSize: 20,
                                            )),
                                      ]),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        children: [
                                          Text( AppLocalizations.of(context)!.yearEstablished,
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                          SizedBox(width: 50),
                                          Text(
                                              cubit.map["dateOfEstablishment"] !=
                                                          null ||
                                                      cubit.map.isEmpty
                                                  ? cubit.map[
                                                      "dateOfEstablishment"]
                                                  : "",
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        children: [
                                          Text( AppLocalizations.of(context)!.product_Certificate,
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                          SizedBox(width: 50),
                                          Text("",
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        children: [
                                          Text( AppLocalizations.of(context)!.tradeTerms,
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                          SizedBox(width: 50),
                                          Text("",
                                              style: TextStyle(
                                                fontSize: 20,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 00.0),
                            child: InkWell(
                              onTap: () async {
                                await cubit.createRomeCubit(tradeProfile!);
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.orange,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child:  Text(
                                  AppLocalizations.of(context)!.chat_Now,
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                      height: 50,
                    ),
                    const FooterScreen(),
                  ],
                ),
              ),
            );
    });
  }
}
