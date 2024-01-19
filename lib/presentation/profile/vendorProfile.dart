import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utls/themes/button/MaterialButtom.dart';
import 'cubit/names_cubit.dart';
import 'cubit/names_state.dart';
import 'widget/CustomTextField.dart';
import 'widget/profile_button.dart';

class VendorProfile extends StatelessWidget {
  const VendorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneNumberController = TextEditingController();
    final TextEditingController textController = TextEditingController();
    NamesCubit cubit = NamesCubit.get(context);
    cubit.getData();
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return cubit.map.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: SizedBox(
                      width: 820,
                      height: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.my_account,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                              const Text(
                                '   100%',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //image
                          Stack(
                            children: [
                              //image viewer
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
                              //icon
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 6, top: 64),
                                child: InkWell(
                                  onTap: () async {
                                    await cubit.sendImage();
                                  },
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.grey.withOpacity(.8),
                                    radius: 10,
                                    child: const Icon(FontAwesomeIcons.pen,
                                        size: 10, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            AppLocalizations.of(context)!.general_Information,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                          //PART TWO
                          const SizedBox(
                            height: 5,
                          ),
                          //text field and name and phone
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppLocalizations.of(context)!.name),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: textController,
                                      label: cubit.map["name"] != null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["name"]
                                          : "name",
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppLocalizations.of(context)!
                                      .phone_number),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: phoneNumberController,
                                      label: cubit.map["phone"] != null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["phone"]
                                          : "phone",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("about_as"),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: textController,
                                      label: cubit.map["about_as"] != null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["about_as"]
                                          : "about_as",
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("city"),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: phoneNumberController,
                                      label: cubit.map["city"] != null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["city"]
                                          : "city",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("commercialRegistrationNo"),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: textController,
                                      label:
                                          cubit.map["commercialRegistrationNo"] !=
                                                      null &&
                                                  cubit.map.isNotEmpty
                                              ? cubit.map[
                                                  "commercialRegistrationNo"]
                                              : "commercialRegistrationNo",
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("contry"),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: phoneNumberController,
                                      label: cubit.map["contry"] != null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["contry"]
                                          : "contry",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("dateOfEstablishment"),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: textController,
                                      label: cubit.map["dateOfEstablishment"] !=
                                                  null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["dateOfEstablishment"]
                                          : "dateOfEstablishment",
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("factoryName"),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: phoneNumberController,
                                      label: cubit.map["factoryName"] != null &&
                                              cubit.map.isNotEmpty
                                          ? cubit.map["factoryName"]
                                          : "factoryName",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppLocalizations.of(context)!.name),
                                  FocusScope(
                                    node: FocusScopeNode(),
                                    child: textField(
                                      controller: textController,
                                      label:
                                          cubit.map["taxCardNumber"] != null &&
                                                  cubit.map.isNotEmpty
                                              ? cubit.map["taxCardNumber"]
                                              : "taxCardNumber",
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              cubit.sendData({
                                "name": textController.text,
                                "phone": phoneNumberController.text,
                              });
                            },
                            child: ProfileButton(
                              cubit: cubit,
                              data: {
                                "name": textController.text,
                                "phone": phoneNumberController.text,
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          SizedBox(
                            height: 10,
                            child: Text(
                              AppLocalizations.of(context)!.security,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomMaterialButtom(
                            text: AppLocalizations.of(context)!.changePassword,
                            color: Colors.black,
                            coolor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
    });
  }
}
