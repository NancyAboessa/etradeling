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
                    MainField(
                        hint: "contry", controller: productNameController),
                    MainField(
                        hint: "Abut As", controller: productNameController),
                    MainField(
                        hint: "Tax card number",
                        controller: productNameController),
                    MainField(
                        hint: "factory name",
                        controller: productNameController),
                    MainField(
                        hint: "Date of Establishment",
                        controller: productNameController),
                    MainField(hint: "city", controller: productNameController),
                    MainField(
                        hint: "Commercial Registration No",
                        controller: productNameController),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250, bottom: 100),
              child: InkWell(
                onTap: () {
                  cubit.vendorCubit({});
                },
                child: Container(
                  color: Colors.black,
                  child: const Text("Submit"),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
