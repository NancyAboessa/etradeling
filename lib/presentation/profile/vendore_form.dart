import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/widget/profile_pig_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utls/themes/main_field/main_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VendorForm extends StatelessWidget {
  VendorForm({super.key});
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController contryController = TextEditingController();
  final TextEditingController aboutAsController = TextEditingController();
  final TextEditingController taxCardNumberController = TextEditingController();
  final TextEditingController factoryNameController = TextEditingController();
  final TextEditingController dateOfEstablishment = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController commercialRegistrationNoController =
      TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return SingleChildScrollView(
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
                      MainField(hint: AppLocalizations.of(context)!.country, controller: contryController),
                      MainField(hint: AppLocalizations.of(context)!.aboutus, controller: aboutAsController),
                      MainField(
                          hint: AppLocalizations.of(context)!.factoryname,
                          controller: factoryNameController),
                      MainField(
                          hint: AppLocalizations.of(context)!.dateofEstablishment,
                          controller: dateOfEstablishment),
                      MainField(hint: "city", controller: cityController),
                      MainField(
                          hint: AppLocalizations.of(context)!.taxcardnumber,
                          controller: taxCardNumberController),
                      MainField(
                          hint: AppLocalizations.of(context)!.commercialRegistrationNo,
                          controller: commercialRegistrationNoController),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 410),
                        child: Text(
                          AppLocalizations.of(context)!.taxcardnumber,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 450),
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
                              child: InkWell(
                                onTap: () {
                                  cubit.getImageScound();
                                },
                                child: Text("+",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 320),
                        child: Text(
                          AppLocalizations.of(context)!.commercialRegistrationNo,
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
                      "factoryName": factoryNameController.text,
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
                  child:  Text(
                    AppLocalizations.of(context)!.submit,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
