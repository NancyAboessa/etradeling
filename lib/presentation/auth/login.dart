import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/login.cubit.dart';
import 'bloc/login.state.dart';
import 'rigster.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                      const Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'Sign in ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'email address must not be empty ';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            labelText: 'E-mail',
                            prefixIcon: Icon(Icons.email),
                          ),
                          onFieldSubmitted: (value) {
                            // print(value);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
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
                          decoration: const InputDecoration(
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
                              loginCubit.NewPassword();
                            },
                            child: const Text(
                              'Forget password ?',
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
                        height: 75,
                        width: double.infinity,
                        color: Colors.black,
                        child: MaterialButton(
                          onPressed: () {
                            loginCubit.SignInWithEamilandPass(
                                emailController.text, passwordController.text);
                          },
                          child: const Text(
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
                          const Text(
                            'Don\'t have an account .?',
                          ),
                          TextButton(
                            onPressed: () {
                              // loginCubit!.signupPress();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => BlocProvider.value(
                                      value:
                                          BlocProvider.of<LoginCubit>(context),
                                      child: SignUpScreen(),
                                    ),
                                  ));
                            },
                            child: const Text(
                              'Sign up',
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
            );
          },
        ));
  }
}
