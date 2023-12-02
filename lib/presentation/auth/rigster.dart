import 'package:etradeling/presentation/auth/bloc/login.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login.cubit.dart';
import 'login.dart';

class SignUp_Screen extends StatelessWidget {
  var emaiController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit.get(context);
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(builder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Create an account free',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: emaiController,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Country',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        controller: passwordController,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Comfirm Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color: Colors.black,
                      ),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          loginCubit.SignupWithEmailandpass(
                              emaiController.text, passwordController.text);
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Text(
                            'or',
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
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'have an account ?',
                        ),
                        TextButton(
                          onPressed: () {
                            // loginCubit!.loginPress();
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (contextlogin) => login_screen(),
                                ));
                          },
                          child: Text(
                            'Sign in',
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
          ),
        );
      }),
    );
  }
}
