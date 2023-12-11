import 'package:etradeling/about_us/about_usScreen.dart';
import 'package:etradeling/firebase_options.dart';
import 'package:etradeling/presentation/Contact_screen/contact_screen.dart';
import 'package:etradeling/presentation/Category/Cubit/Category%20Cubit.dart';
import 'package:etradeling/presentation/Productpage/cubit/cubit.dart';
import 'package:etradeling/presentation/auth/bloc/login.cubit.dart';
import 'package:etradeling/presentation/auth/login.dart';
import 'package:etradeling/presentation/auth/login_check.dart';
import 'package:etradeling/presentation/category_screen/category_cart.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/presentation/our_blog/custemCaret-downIcon.dart';
import 'package:etradeling/presentation/our_blog/ourblog_screen.dart';
import 'package:etradeling/presentation/auth/rigster.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/presentation/post/create_post.dart';
import 'package:etradeling/presentation/post/cubit/cubite.dart';
import 'package:etradeling/presentation/profile/Profile.dart';
import 'package:etradeling/presentation/profile/profile%20part%20two.dart';
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
        BlocProvider(create: (context) => PostCubit()),
        BlocProvider(create: (context) => NamesCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => CubitProduct()),
        BlocProvider(create: (context) => AppBarCubit()),
      ], child: About_us(),
      ),
    );
  }
}
