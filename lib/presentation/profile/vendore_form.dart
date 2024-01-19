import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/widget/profile_pig_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utls/themes/main_field/main_field.dart';

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
                child: Column(
                  children: [
                    MainField(hint: "contry", controller: contryController),
                    MainField(hint: "Abut As", controller: aboutAsController),
                    MainField(
                        hint: "factory name",
                        controller: factoryNameController),
                    MainField(
                        hint: "Date of Establishment",
                        controller: dateOfEstablishment),
                    MainField(hint: "city", controller: cityController),
                    MainField(
                        hint: "Tax card number",
                        controller: taxCardNumberController),
                    MainField(
                        hint: "Commercial Registration No",
                        controller: commercialRegistrationNoController),
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 350, bottom: 100, top: 40),
              child: InkWell(
                onTap: () {
                  cubit.vendorCubit({
                    "contry": contryController.text,
                    "about_as": aboutAsController.text,
                    "taxCardNumber": taxCardNumberController.text,
                    "factoryName": factoryNameController.text,
                    "commercialRegistrationNo":
                        commercialRegistrationNoController.text,
                    "dateOfEstablishment": dateOfEstablishment.text,
                    "city": cityController.text,
                  });
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
      );
    });
  }
}
