import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/Productpage/Productpage.dart';
import 'package:etradeling/presentation/auth/login.dart';
import 'package:etradeling/presentation/auth/rigster.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/presentation/profile/Profile.dart';
import 'package:etradeling/presentation/profile/tradeprofile.dart';
import 'package:flutter/material.dart';
import '../../presentation/Category/Category.dart';
import '../../presentation/auth/login_check.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pathPatterns = [
      const BeamPage(
        child: LoginCheck(),
        key: ValueKey('/'),
      ),
    ];
    if (state.uri.pathSegments.contains('login')) {
      pathPatterns.add(
        BeamPage(
          key: ValueKey('/login'),
          child: LoginScreen(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('signup')) {
      pathPatterns.add(
        BeamPage(
          key: ValueKey('/signup'),
          child: SignUpScreen(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('home')) {
      pathPatterns.add(
        const BeamPage(
          key: ValueKey('/home'),
          child: HomeScreen(),
        ),
      );
    }
    final String? trade_profile = state.pathParameters['trade_profile'];
    if (trade_profile != null) {
      pathPatterns.add(
        BeamPage(
          key: ValueKey('trade_profile/${trade_profile}'),
          child: TradeProfile(
            tradeProfile: trade_profile,
          ),
        ),
      );
    }
    if (state.uri.pathSegments.contains('profile')) {
      pathPatterns.add(
        BeamPage(
          key: const ValueKey('profile'),
          child: Profile(),
        ),
      );
    }
    final String? madaname = state.pathParameters['product'];
    if (madaname != null) {
      pathPatterns.add(BeamPage(
        key: ValueKey('product/$madaname'),
        child: Product(product: madaname),
      ));
    }
    final String? catgoryname = state.pathParameters['catgory'];
    if (state.uri.pathSegments.contains('catgory')) {
      if (catgoryname != null) {
        pathPatterns.add(BeamPage(
          key: const ValueKey('catgory/'),
          child: Category(catgory: catgoryname),
        ));
      }
    }
    return pathPatterns;
  }

  @override
  // TODO: implement pathPatterns
  List<Pattern> get pathPatterns => [
        '/',
        '/login',
        '/signup',
        '/trade_profile/:trade_profile',
        '/main_home',
        '/catgory/:catgory',
        '/product/:product',
        "/profile",
        "/catgory",
      ];
}
