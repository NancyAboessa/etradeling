import 'package:etradeling/firebase_options.dart';
import 'package:etradeling/presentation/Category/Cubit/Category%20Cubit.dart';
import 'package:etradeling/presentation/Contact_screen/contact_screen.dart';
import 'package:etradeling/presentation/Productpage/Productpage.dart';
import 'package:etradeling/presentation/Productpage/cubit/cubit.dart';
import 'package:etradeling/presentation/auth/bloc/login.cubit.dart';
import 'package:etradeling/presentation/auth/login_check.dart';
import 'package:etradeling/presentation/auth/rigster.dart';
import 'package:etradeling/presentation/cartPage/cartPage.dart';
import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/presentation/our_blog/ourblog_screen.dart';
import 'package:etradeling/presentation/post/create_post.dart';
import 'package:etradeling/presentation/post/cubit/cubite.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/cartPage/cubit/CartCubit.dart';
import 'presentation/home_screen/Bloc/BlocAppBar.dart';
import 'presentation/profile/cubit/names_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PostCubit()),
          BlocProvider(create: (context) => NamesCubit()),
          BlocProvider(create: (context) => LoginCubit()),
          BlocProvider(create: (context) => CubitProduct()),
          BlocProvider(create: (context) => AppBarCubit()),
        ],
        child: LoginCheck(),
      ),
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        //Locale('ar'),
      ],
    );
  }
}
