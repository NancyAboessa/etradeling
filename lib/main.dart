import 'package:etradeling/firebase_options.dart';
import 'package:etradeling/presentation/auth/bloc/login.cubit.dart';
import 'package:etradeling/presentation/auth/login.dart';
import 'package:etradeling/presentation/post/cubit/cubite.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/profile/cubit/names_cubit.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => PostCubit()),
        BlocProvider(create: (context) => NamesCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ], child: LoginScreen()),
    );
  }
}
