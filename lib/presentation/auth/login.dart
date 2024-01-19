import 'package:etradeling/presentation/auth/login_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/login.cubit.dart';
import 'bloc/login.state.dart';
import 'rigster.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit.get(context);
    return Scaffold(body: BlocBuilder<LoginCubit, LoginState>(
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
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "the field is empty";
                                      }
                                      if (!RegExp(
                                              r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$')
                                          .hasMatch(value)) {
                                        return "email format dosen't corect";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
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
                                    obscureText: true,
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
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      labelText: AppLocalizations.of(context)!
                                          .password,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
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
                                loginCubit.NewPassword();
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
                                    emailController.text,
                                    passwordController.text);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => BlocProvider.value(
                                          value: BlocProvider.of<LoginCubit>(
                                              context),
                                          child: LoginCheck()),
                                    ));
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
    ));
  }
}
