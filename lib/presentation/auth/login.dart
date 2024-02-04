import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/auth/login_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/login.cubit.dart';
import 'bloc/login.state.dart';
import 'rigster.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
  });
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formState = GlobalKey();
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit.get(context);
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (BuildContext context, LoginState state) {
          return Center(
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage("assets/imeges/Sign-In.jpg"),
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
                            AppLocalizations.of(context)!.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)!.signin,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Form(
                              key: formState,
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: TextFormField(
                                      controller: widget.emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return AppLocalizations.of(context)!.thefieldisempty;
                                        }
                                        if (!RegExp(
                                                r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
                                            .hasMatch(value)) {
                                          return AppLocalizations.of(context)!.emailformatdosentcorect;
                                        }
                                        if (loginCubit.emaile ==
                                            "user not found") {
                                          return AppLocalizations.of(context)!.youremailorpassworddosentcorrect;
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        labelText:
                                            AppLocalizations.of(context)!.email,
                                        prefixIcon: Icon(Icons.email),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  SizedBox(
                                    child: TextFormField(
                                      controller: widget.passwordController,
                                      obscureText: obscureText,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return AppLocalizations.of(context)!.thefieldisempty;
                                        }
                                        if (loginCubit.passe ==
                                            "Wrong password provided for that user") {
                                          return AppLocalizations.of(context)!.youremailorpassworddosentcorrect;
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: InputDecoration(
                                        labelText: AppLocalizations.of(context)!
                                            .password,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              obscureText = !obscureText;
                                            });
                                          },
                                          child: obscureText == true
                                              ? Icon(
                                                  Icons.remove_red_eye,
                                                )
                                              : Icon(
                                                  Icons.remove_red_eye,
                                                  color: Colors.orange,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  loginCubit.NewPassword(
                                      widget.emailController.text);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content:
                                         Text(AppLocalizations.of(context)!.pleasecheckyouremail),
                                    action: SnackBarAction(
                                      label: AppLocalizations.of(context)!.action,
                                      onPressed: () {
                                        // Code to execute.
                                      },
                                    ),
                                  ));
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.forgetpassword,
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
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
                                if (formState.currentState!.validate()) {
                                  loginCubit.SignInWithEamilandPass(
                                      widget.emailController.text,
                                      widget.passwordController.text);
                                  context.beamToNamed("/");
                                } else {}
                              },
                              child: Text(
                                AppLocalizations.of(context)!.signin,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.donthaveanaccount,
                              ),
                              TextButton(
                                onPressed: () {
                                  // loginCubit!.signupPress();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => BlocProvider.value(
                                          value: BlocProvider.of<LoginCubit>(
                                              context),
                                          child: SignUpScreen(),
                                        ),
                                      ));
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.signup,
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
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
        },
      ),
    );
  }
}
