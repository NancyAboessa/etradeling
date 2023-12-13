import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/widget/buttondown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          : SizedBox(
              height: 600,
              width: 1800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("My Addresses"),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 200.0, bottom: 10),
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Add New Address"),
                                        actions: [
                                          SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                TextField(
                                                  decoration: InputDecoration(
                                                      label: Text("name")),
                                                  controller: firstName,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                      label: Text("last name")),
                                                  controller: lastName,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                      label: Text("number")),
                                                  controller: phoneName,
                                                ),
                                                DropDownCountryButton(
                                                    list: ["egypt", "unitStat"],
                                                    dropdownValue: "Country",
                                                    fun: cubit,
                                                    width: 100),
                                                InkWell(
                                                  onTap: () {
                                                    cubit.sendAddress({
                                                      "firstname":
                                                          firstName.text,
                                                      "lastname": lastName.text,
                                                      "phonenumber":
                                                          phoneName.text,
                                                      "Country":
                                                          cubit.valCountry,
                                                    });
                                                  },
                                                  child: Container(
                                                    child: Text("ADD"),
                                                    color: Colors.black,
                                                    width: 100,
                                                  ),
                                                )
                                              ],
                                            ),
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
                              child: const Text(
                                "add Addresses",
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 550,
                    width: 800,
                    child: ListView.builder(
                        itemCount: cubit.address.length,
                        padding: EdgeInsets.only(right: 20),
                        itemBuilder: (c, i) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Container(
                              height: 200,
                              width: 400,
                              padding: EdgeInsets.only(left: 20, top: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: .1,
                                  color: Colors.black,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              first[0],
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              cubit.address[i]["firstname"],
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.grey.shade400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              first[1],
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              cubit.address[i]["phonenumber"],
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.grey.shade400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              first[2],
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              cubit.address[i]["lastname"],
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.grey.shade400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            );
    });
  }
}
