import 'package:etradeling/presentation/auth/bloc/login.cubit.dart';
import 'package:etradeling/presentation/auth/bloc/login.state.dart';
import 'package:etradeling/presentation/auth/login.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCheck extends StatelessWidget {
  const LoginCheck({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, states) {
      if (FirebaseAuth.instance.currentUser == null) {
        return LoginScreen();
      } else {
        return const HomeScreen();
      }
    });
  }
}
