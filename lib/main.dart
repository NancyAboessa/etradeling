import 'package:etradeling/firebase_options.dart';
import 'package:etradeling/presentation/Category/Cubit/Category%20Cubit.dart';
import 'package:etradeling/presentation/Productpage/cubit/cubit.dart';
import 'package:etradeling/presentation/auth/bloc/login.cubit.dart';
import 'package:etradeling/presentation/auth/login.dart';
import 'package:etradeling/presentation/auth/login_check.dart';
import 'package:etradeling/presentation/auth/rigster.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/presentation/post/create_post.dart';
import 'package:etradeling/presentation/post/cubit/cubite.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/Category/Category.dart';
import 'presentation/Productpage/Productpage.dart';
import 'presentation/cartPage/cubit/CartCubit.dart';
import 'presentation/home_screen/Bloc/BlocAppBar.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade500),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider<PostCubit>(create: (context) => PostCubit()),
        BlocProvider<NamesCubit>(create: (context) => NamesCubit()),
        BlocProvider<LoginCubit>(create: (context) => LoginCubit()),
        BlocProvider<CubitProduct>(create: (context) => CubitProduct()),
        BlocProvider<CubitCategories>(create: (context) => CubitCategories()),
        BlocProvider<AppBarCubit>(create: (context) => AppBarCubit()),
        BlocProvider(create: (context) => CartCubit()),
      ], child: const LoginCheck()),
    );
  }
}
