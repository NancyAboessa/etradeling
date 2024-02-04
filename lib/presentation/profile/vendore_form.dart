import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/widget/bouttoncity.dart';
import 'package:etradeling/presentation/profile/widget/date.dart';
import 'package:etradeling/presentation/profile/widget/employ_button.dart';
import 'package:etradeling/presentation/profile/widget/profile_pig_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utls/themes/main_field/main_field.dart';
import 'widget/buttondown.dart';

class VendorForm extends StatelessWidget {
  VendorForm({super.key});
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController contryController = TextEditingController();
  final TextEditingController aboutAsController = TextEditingController();
  final TextEditingController addressArabic = TextEditingController();
  final TextEditingController addressEnglish = TextEditingController();
  final TextEditingController aboutAsEnglishController =
      TextEditingController();
  final TextEditingController aboutAsArabicController = TextEditingController();
  final TextEditingController taxCardNumberController = TextEditingController();
  final TextEditingController factoryNameArabicController =
      TextEditingController();
  final TextEditingController factoryNameEnglishController =
      TextEditingController();
  final TextEditingController dateOfEstablishment = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController website = TextEditingController();
  final TextEditingController commercialRegistrationNoController =
      TextEditingController();
  List<String> list = ["egypt", "saudea"];
  List<String> list2 = ["cairo", "giza"];
  List<String> employlist = ["1", "2"];
  List<String> date = ["2024", "2023"];
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PigProfileContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: SizedBox(
                  width: 600,
                  child: Form(
                    key: formState,
                    child: Column(
                      children: [
                        MainField(
                            hint: "factory name arabic",
                            controller: factoryNameArabicController),
                        MainField(
                            hint: "factory name english",
                            controller: factoryNameEnglishController),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, right: 410),
                          child: Text(
                            "Tax card number",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 450),
                          child: InkWell(
                            onTap: () {
                              cubit.getImageScound();
                            },
                            child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.black26,
                                    )),
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  alignment: Alignment.center,
                                  child: Text("+",
                                      style: TextStyle(color: Colors.black)),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, right: 320),
                          child: Text(
                            "Commercial Registration No",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 450),
                          child: InkWell(
                            onTap: () {
                              cubit.getImageFirst();
                            },
                            child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.black26,
                                    )),
                                child: Container(
                                  height: 100,
                                  width: 200,
                                  alignment: Alignment.center,
                                  child: Text("+",
                                      style: TextStyle(color: Colors.black)),
                                )),
                          ),
                        ),
                        MainField(
                            hint: "Tax card number",
                            controller: taxCardNumberController),
                        MainField(
                            hint: "Commercial Registration No",
                            controller: commercialRegistrationNoController),
                        MainField(hint: "phone", controller: contryController),
                        EmbloyButton(
                          width: 600,
                          list: employlist,
                          dropdownValue: cubit.employ,
                          fun: cubit,
                        ),
                        MainField(
                            hint: "Address in Arabic",
                            controller: addressArabic),
                        MainField(
                            hint: "Address in English",
                            controller: addressEnglish),
                        MainField(hint: "website", controller: website),
                        DropDownCountryButton(
                          width: 550,
                          fun: cubit,
                          list: list,
                          dropdownValue: cubit.valCountry,
                        ),
                        DropDownCityButton(
                          width: 550,
                          fun: cubit,
                          list: list2,
                          dropdownValue: cubit.cityString,
                        ),
                        Date(
                          width: 550,
                          fun: cubit,
                          list: date,
                          dropdownValue: cubit.date,
                        ),
                        MainField(
                            hint: "Company description in Arabic",
                            controller: aboutAsArabicController),
                        MainField(
                            hint: "Company description in English",
                            controller: aboutAsEnglishController),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350, bottom: 100, top: 40),
                child: InkWell(
                  onTap: () {
                    if (formState.currentState!.validate()) {
                    } else {
                      cubit.vendorCubit({
                        "contry": contryController.text,
                        "about_as": aboutAsController.text,
                        "taxCardNumber": taxCardNumberController.text,
                        "factoryName": factoryNameEnglishController.text,
                        "commercialRegistrationNo":
                            commercialRegistrationNoController.text,
                        "dateOfEstablishment": dateOfEstablishment.text,
                        "commercialRegistrationNoImage": cubit.firstImage,
                        "taxCardNumberImage": cubit.scondImage,
                        "city": cityController.text,
                      });
                    }
                  },
                  child: Container(
                    height: 40,
                    width: 110,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
