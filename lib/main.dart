import 'package:beamer/beamer.dart';
import 'package:etradeling/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/Category/Cubit/Category Cubit.dart';
import 'presentation/Productpage/cubit/cubit.dart';
import 'presentation/auth/bloc/login.cubit.dart';
import 'presentation/home_screen/Bloc/BlocAppBar.dart';
import 'presentation/messages/cubit/cubit.dart';
import 'presentation/messages/cubit/state.dart';
import 'presentation/post/cubit/cubite.dart';
import 'presentation/profile/cubit/names_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'utls/cache_helper/cache_helper.dart';
import 'utls/route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // MyApp? of(BuildContext context) => context.findAncestorStateOfType<MyApp>();
  @override
  final routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [HomeLocation()],
    ),
    notFoundRedirectNamed: '/',
  );
  Widget build(BuildContext context) {
    CacheHelper.put(key: "en", value: "en");
    CacheHelper.put(key: "ar", value: "a");
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PostCubit()),
        BlocProvider(create: (_) => NamesCubit()),
        BlocProvider(create: (_) => LoginCubit()),
        BlocProvider(create: (_) => CubitProduct()),
        BlocProvider(create: (_) => AppBarCubit()),
        BlocProvider(create: (_) => CubitMessages()),
        BlocProvider(create: (_) => CubitCategories()),
      ],
      child:
          BlocBuilder<CubitMessages, MainMessagesState>(builder: (context, i) {
        CubitMessages cubit = CubitMessages.get(context);
        return MaterialApp.router(
          routerDelegate: routerDelegate,
          routeInformationParser: BeamerParser(),
          locale: cubit.lang,
          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          color: Colors.orange,
          localizationsDelegates: const [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          backButtonDispatcher:
              BeamerBackButtonDispatcher(delegate: routerDelegate),
        );
      }),
    );
  }
}
