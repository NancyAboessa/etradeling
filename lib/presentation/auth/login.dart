import 'package:etradeling/presentation/auth/rigster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login.cubit.dart';
import 'bloc/login.state.dart';

class login_screen extends StatelessWidget {
  login_screen({super.key});
  LoginCubit? loginCubit;
  var emaiController = TextEditingController();
  var PasswordlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit.get(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: BlocBuilder<LoginCubit, LoginState>(
          builder: (BuildContext context, LoginState state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Sign in ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        child: TextFormField(
                          controller: emaiController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'email address must not be empty ';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            prefixIcon: Icon(Icons.email),
                          ),
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              loginCubit!.NewPassword();
                            },
                            child: Text(
                              'Forget password ?',
                              style: TextStyle(
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.black,
                        child: MaterialButton(
                          onPressed: () {
                            loginCubit.SignInWithEamilandPass(
                                emaiController.text, PasswordlController.text);
                          },
                          child: Text(
                            'Sign in',
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
                            'Don\'t have an account .?',
                          ),
                          TextButton(
                            onPressed: () {
                              // loginCubit!.signupPress();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp_Screen(),
                                  ));
                            },
                            child: Text(
                              'Sign up',
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
            );
          },
        ));
  }
}
