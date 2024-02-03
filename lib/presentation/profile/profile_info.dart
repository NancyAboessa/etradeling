import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:etradeling/presentation/profile/widget/CustomTextField.dart';
import 'package:etradeling/presentation/profile/widget/profile_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utls/themes/button/MaterialButtom.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'widget/phone_field.dart';

class ProfileData extends StatelessWidget {
  ProfileData({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    final TextEditingController phoneNumberController = TextEditingController();
    final TextEditingController textController = TextEditingController();
    cubit.getData();
    return BlocBuilder<NamesCubit, NamesState>(builder: (context, state) {
      return cubit.map.isEmpty
          ? Center(
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
                      height: 600,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.my_account,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
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
                            style: TextStyle(
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
                                  textField(
                                    controller: textController,
                                    label: cubit.map["name"] != null &&
                                            cubit.map.isNotEmpty
                                        ? cubit.map["name"]
                                        : "name",
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
                                  PhoneField(
                                    controller: phoneNumberController,
                                    label: cubit.map["phone"] != null &&
                                            cubit.map.isNotEmpty
                                        ? cubit.map["phone"]
                                        : "phone",
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () async {
                              await cubit.sendData({
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
                          Text(
                            AppLocalizations.of(context)!.security,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              cubit.NewPassword();
                            },
                            child: CustomMaterialButtom(
                              text:
                                  AppLocalizations.of(context)!.changePassword,
                              color: Colors.black,
                              coolor: Colors.white,
                            ),
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
