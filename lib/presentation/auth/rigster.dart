import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/login.cubit.dart';
import 'login.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpScreen extends StatefulWidget {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formState = GlobalKey();
  bool obscureText = true;
  bool x = true;
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit.get(context);
    return Scaffold(
      body: SingleChildScrollView(
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
              child: Padding(
                padding: const EdgeInsets.only(right: 80, left: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/imeges/etradling1-1.png",
                      fit: BoxFit.cover,
                      height: 90,
                      width: 300,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppLocalizations.of(context)!.signup,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.createanaccountfree,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Form(
                      key: formState,
                      child: Column(
                        children: [
                          SizedBox(
                            child: TextFormField(
                              controller: widget.emailController,
                              decoration: InputDecoration(
                                labelText: AppLocalizations.of(context)!.email,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "the field is empty";
                                }
                                if (loginCubit.emilv == "email already exist") {
                                  return "email already exist";
                                }
                                if (!RegExp(
                                        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
                                    .hasMatch(value)) {
                                  return "email format dosen't corect";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          SizedBox(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: widget.nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "the field is empty";
                                }
                                if (!RegExp(r'^[a-zA-Z0-9_]+$')
                                    .hasMatch(value)) {
                                  return "name dosen't corect";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                labelText: AppLocalizations.of(context)!.name,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: obscureText,
                              controller: widget.passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "the field is empty";
                                }
                                if (value.length < 6) {
                                  return "Password must be at least 6 characters long";
                                }
                                if (!RegExp(r'^(?=.*[A-Z])(?=.*\d).{8,}$')
                                    .hasMatch(value)) {
                                  return "password formate dosent corect ";
                                }
                                if (value.length > 16) {
                                  return "Password must be at most 16 characters short";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                labelText:
                                    AppLocalizations.of(context)!.password,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_red_eye,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: obscureText,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "the field is empty";
                                }
                                if (value.length < 6) {
                                  return "Password must be at least 6 characters long";
                                }
                                if (!RegExp(r'^(?=.*[A-Z])(?=.*\d).{8,}$')
                                    .hasMatch(value)) {
                                  return "password formate dosent corect ";
                                }
                                if (value.length > 16) {
                                  return "Password must be at most 16 characters short";
                                }
                                if (value != widget.passwordController.text) {
                                  return "password didn't much password corect";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                labelText: AppLocalizations.of(context)!
                                    .confirm_password,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_red_eye,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          if (formState.currentState!.validate()) {
                            loginCubit.SignupWithEmailandpass(
                                widget.emailController.text,
                                widget.passwordController.text,
                                widget.nameController.text);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text(
                                  'you Sigun up is sucesfuly ,pleas check your mail'),
                              action: SnackBarAction(
                                label: 'Action',
                                onPressed: () {
                                  // Code to execute.
                                },
                              ),
                            ));
                          } else {}
                        },
                        child: Text(
                          AppLocalizations.of(context)!.signup,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.or,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.have,
                        ),
                        TextButton(
                          onPressed: () {
                            // loginCubit!.loginPress();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (contextLogin) => BlocProvider.value(
                                    value: BlocProvider.of<LoginCubit>(context),
                                    child: LoginScreen(),
                                  ),
                                ));
                          },
                          child: Text(
                            AppLocalizations.of(context)!.signin,
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            await loginCubit.signUpWithFacebook();
                          },
                          child: Icon(Icons.facebook, color: Colors.orange),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
