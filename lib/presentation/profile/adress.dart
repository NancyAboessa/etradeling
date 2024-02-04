import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/widget/buttondown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Adress extends StatelessWidget {
  const Adress({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List first = ["name:", "Phone Number", "Address:"];
    NamesCubit cubit = NamesCubit.get(context);
    TextEditingController firstName = TextEditingController();
    TextEditingController lastName = TextEditingController();
    TextEditingController phoneName = TextEditingController();
    cubit.getAddress();
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return cubit.address.isEmpty && state is EmptyAddress
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 800,
                child: SingleChildScrollView(
                  // physics: NeverScrollableScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Text(AppLocalizations.of(context)!.my_Addresses),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 200.0, bottom: 10),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text(AppLocalizations.of(context)!.addNewAddress),
                                            actions: [
                                              Column(
                                                children: [
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        label: Text(AppLocalizations.of(context)!.name)),
                                                    controller: firstName,
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        label:
                                                            Text(AppLocalizations.of(context)!.lastname)),
                                                    controller: lastName,
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                        label: Text(AppLocalizations.of(context)!.labore)),
                                                    controller: phoneName,
                                                  ),
                                                  DropDownCountryButton(
                                                      list: [
                                                        AppLocalizations.of(context)!.egypt ,
                                                        AppLocalizations.of(context)!.unitStat,
                                                      ],
                                                      dropdownValue: AppLocalizations.of(context)!.country,
                                                      fun: cubit,
                                                      width: 100),
                                                  InkWell(
                                                    onTap: () {
                                                      cubit.sendAddress({
                                                        "firstname":
                                                            firstName.text,
                                                        "lastname":
                                                            lastName.text,
                                                        "phonenumber":
                                                            phoneName.text,
                                                        "Country":
                                                            cubit.valCountry,
                                                      });
                                                    },
                                                    child: Container(
                                                      child: Text(AppLocalizations.of(context)!.aDD),
                                                      color: Colors.black,
                                                      width: 100,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ));
                                },
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.deepOrange, width: .2),
                                  ),
                                  alignment: Alignment.center,
                                  child:  Text(
                                      AppLocalizations.of(context)!.add_Addresses,
                                    style: TextStyle(color: Colors.deepOrange),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 600,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: cubit.address.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Container(
                                    height: 200,
                                    width: 400,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.orange,
                                        width: .4,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, left: 20),
                                          child: Row(
                                            children: [
                                               Text(AppLocalizations.of(context)!.firstname,
                                                  style:
                                                      TextStyle(fontSize: 18)),
                                              const SizedBox(
                                                width: 200,
                                              ),
                                              Text(
                                                "${cubit.address[index]["firstname"]}",
                                                style: TextStyle(fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, left: 20),
                                          child: Row(
                                            children: [
                                               Text(AppLocalizations.of(context)!.lastname,
                                                  style:
                                                      TextStyle(fontSize: 18)),
                                              const SizedBox(
                                                width: 200,
                                              ),
                                              Text(
                                                "${cubit.address[index]["lastname"]}",
                                                style: TextStyle(fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, left: 20),
                                          child: Row(
                                            children: [
                                               Text(AppLocalizations.of(context)!.country,
                                                  style:
                                                      TextStyle(fontSize: 18)),
                                              const SizedBox(
                                                width: 200,
                                              ),
                                              Text(
                                                "${cubit.address[index]["Country"]}",
                                                style: TextStyle(fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        )
                      ]),
                ),
              ),
            );
    });
  }
}
