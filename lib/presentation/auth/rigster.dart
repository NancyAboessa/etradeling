import 'package:flutter/material.dart';
import 'bloc/login.cubit.dart';
import 'login.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit.get(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  // Expanded(
                  //   flex: 1,
                  //
                  // ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'Create an account free',
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
                            decoration: const InputDecoration(
                              labelText: 'Name',
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
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
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
                            decoration: const InputDecoration(
                              labelText: 'Country',
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
                            decoration: const InputDecoration(
                              labelText: 'Confirm Password',
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
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.zero,
                            color: Colors.black,
                          ),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: () {
                              loginCubit.SignupWithEmailandpass(
                                  emailController.text,
                                  passwordController.text);
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
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Row(
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
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'have an account ?',
                            ),
                            TextButton(
                              onPressed: () {
                                // loginCubit!.loginPress();
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (contextLogin) => LoginScreen(),
                                    ));
                              },
                              child: const Text(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
