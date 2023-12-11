// import 'package:beamer/beamer.dart';
// import 'package:etradeling/presentation/Productpage/Productpage.dart';
// import 'package:etradeling/presentation/auth/login.dart';
// import 'package:etradeling/presentation/auth/rigster.dart';
// import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
// import 'package:etradeling/presentation/profile/Profile.dart';
// import 'package:flutter/material.dart';
//
// import '../../presentation/auth/login_check.dart';
//
// class HomeLocation extends BeamLocation<BeamState> {
//   @override
//   List<BeamPage> buildPages(BuildContext context, BeamState state) {
//     final pathPatterns = [
//       const BeamPage(
//         child: LoginCheck(),
//         key: ValueKey('/'),
//       ),
//     ];
//     if (state.uri.pathSegments.contains('login')) {
//       pathPatterns.add(
//         BeamPage(
//           key: ValueKey('/login'),
//           child: LoginScreen(),
//         ),
//       );
//     }
//     if (state.uri.pathSegments.contains('signup')) {
//       pathPatterns.add(
//         BeamPage(
//           key: ValueKey('/signup'),
//           child: SignUpScreen(),
//         ),
//       );
//     }
//     if (state.uri.pathSegments.contains('main_home')) {
//       pathPatterns.add(
//         BeamPage(
//           key: ValueKey('/main_home'),
//           child: HomeScreen(),
//         ),
//       );
//     }
//     if (state.uri.pathSegments.contains('profile')) {
//       pathPatterns.add(
//         BeamPage(
//           key: ValueKey('profile'),
//           child: Profile(),
//         ),
//       );
//     }
//     final String? madaname = state.pathParameters['product'];
//     if (madaname != null) {
//       pathPatterns.add(BeamPage(
//         key: ValueKey('catgory/$madaname'),
//         child: Product(product: madaname),
//       ));
//     }
//     return pathPatterns;
//   }
//
//   @override
//   // TODO: implement pathPatterns
//   List<Pattern> get pathPatterns => [
//         '/',
//         '/login',
//         '/signup',
//         '/main_home',
//         '/catgory/:product',
//         "/profile",
//         "/catgory",
//       ];
// }
