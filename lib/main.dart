import 'package:etradeling/firebase_options.dart';
import 'package:etradeling/presentation/Productpage/Productpage.dart';
import 'package:etradeling/presentation/auth/bloc/login.cubit.dart';
import 'package:etradeling/presentation/auth/login.dart';
import 'package:etradeling/presentation/post/create_post.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/Productpage/cubit/cubit.dart';
import 'presentation/auth/rigster.dart';
import 'presentation/home_screen/appbar.dart';
import 'presentation/messages/cubit/cubit.dart';
import 'presentation/post/cubit/cubite.dart';
import 'presentation/profile/Profile.dart';
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
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PostCubit()),
          BlocProvider(create: (context) => NamesCubit()),
          BlocProvider(create: (context) => LoginCubit()),
          BlocProvider(create: (context) => CubitProduct()),
          BlocProvider(create: (context) => CubitMessages()),
        ],
        child: Profile(),
      ),
    );
  }
}
