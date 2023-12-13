import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/login.cubit.dart';
import 'login.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  SignUpScreen({super.key});
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
                "assets/imeges/1.jpg",
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
                    SizedBox(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: emailController,
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                        onChanged: (value) {
                          // print(value);
                        },
                        decoration:  InputDecoration(
                          labelText: AppLocalizations.of(context)!.name,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                        onChanged: (value) {
                          // print(value);
                        },
                        decoration:  InputDecoration(
                          labelText: AppLocalizations.of(context)!.phone_number,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    SizedBox(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                        onChanged: (value) {
                          // print(value);
                        },
                        decoration:  InputDecoration(
                          labelText: AppLocalizations.of(context)!.country,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
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
                        obscureText: true,
                        controller: passwordController,
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                        onChanged: (value) {
                          // print(value);
                        },
                        decoration:  InputDecoration(
                          labelText: AppLocalizations.of(context)!.password,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
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
                        obscureText: true,
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                        onChanged: (value) {
                          // print(value);
                        },
                        decoration:  InputDecoration(
                          labelText: AppLocalizations.of(context)!.confirm_password,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: Colors.black,
                      ),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          loginCubit.SignupWithEmailandpass(
                              emailController.text, passwordController.text);
                        },
                        child:  Text(
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
                           AppLocalizations.of(context)!.have  ,
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
                          child:  Text(
                            AppLocalizations.of(context)!.signin,
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
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
