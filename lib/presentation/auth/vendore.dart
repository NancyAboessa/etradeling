import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/login.cubit.dart';
import 'bloc/login.state.dart';

class vengorSignup extends StatelessWidget {
  vengorSignup({super.key});
  final List list = ["a", "b", "c"];
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController contryController = TextEditingController();
  final TextEditingController aboutAsController = TextEditingController();
  final TextEditingController taxCardNumberController = TextEditingController();
  final TextEditingController factoryNameController = TextEditingController();
  final TextEditingController dateOfEstablishment = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController commercialRegistrationNoController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit.get(context);
    List hintList = [
      "username",
      AppLocalizations.of(context)!.email,
      AppLocalizations.of(context)!.password,
      AppLocalizations.of(context)!.password,
      "address",
      "detailesaboutthecompany",
      "dateofInit",
      "city",
      "commercial",
      "tax",
    ];
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
          builder: (BuildContext context, LoginState state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 100, top: 0),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/imeges/Sign-In.jpg",
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 120.0),
                              child: Text(
                                "Sign UP AS A ",
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "Vendor ",
                              style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 400,
                          height: 900,
                          child: ListView.builder(
                              itemCount: hintList.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (c, i) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: TextField(
                                    style: const TextStyle(
                                      height: 2.2,
                                    ),
                                    decoration: InputDecoration(
                                        hintText: hintList[i],
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        )),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: Row(children: [
                            SizedBox(
                              width: 200,
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              alignment: Alignment.center,
                              child: RadioListTile(
                                groupValue: loginCubit.a,
                                value: list[0],
                                title: Text(
                                  list[0],
                                  style: TextStyle(color: Colors.black),
                                ),
                                onChanged: (val) {
                                  loginCubit.checkVal(val);
                                  print(loginCubit.a);
                                },
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              alignment: Alignment.center,
                              child: RadioListTile(
                                selected: loginCubit.b != null &&
                                        loginCubit.c != null &&
                                        loginCubit.a != null
                                    ? true
                                    : false,
                                groupValue: loginCubit.b,
                                value: list[1],
                                title: Text(list[1]),
                                onChanged: (val) {
                                  loginCubit.checkVal1(val);
                                  print(loginCubit.b);
                                },
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              alignment: Alignment.center,
                              child: RadioListTile(
                                groupValue: loginCubit.c,
                                value: list[2],
                                title: Text(
                                  list[2],
                                  style: TextStyle(color: Colors.black),
                                ),
                                onChanged: (val) {
                                  loginCubit.checkVal2(val);
                                  print(loginCubit.c);
                                },
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black,
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              loginCubit.vendorSignUp(
                                  emailController.text,
                                  passwordController.text,
                                  "",
                                  contryController.text,
                                  aboutAsController.text,
                                  taxCardNumberController.text,
                                  factoryNameController.text,
                                  cityController.text,
                                  commercialRegistrationNoController.text);
                            },
                            child: const Text(
                              "Sign Up as Vendor",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
