import 'package:beamer/beamer.dart';
import 'package:etradeling/presentation/Productpage/Productpage.dart';
import 'package:etradeling/presentation/auth/login.dart';
import 'package:etradeling/presentation/auth/login_check.dart';
import 'package:etradeling/presentation/auth/rigster.dart';
import 'package:etradeling/presentation/home_screen/home_body/home_screen.dart';
import 'package:etradeling/presentation/profile/Profile.dart';
import 'package:etradeling/presentation/profile/my_product.dart';
import 'package:etradeling/presentation/profile/tradeprofile.dart';
import 'package:flutter/material.dart';
import '../../presentation/Category/Category.dart';
import '../../presentation/Contact_screen/contact_screen.dart';
import '../../presentation/manufacture order/ListUserPost.dart';
import '../../presentation/manufacture order/List_Of_factory.dart';
import '../../presentation/manufacture order/factor order.dart';
import '../../presentation/manufacture order/factory.dart';
import '../../presentation/plog/plog.dart';
import '../../presentation/post/create_post.dart';
import '../../presentation/profile/trade_contact_As.dart';

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
          key: const ValueKey('/login'),
          child: LoginScreen(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('CreatePost')) {
      pathPatterns.add(
        BeamPage(
          key: const ValueKey('/CreatePost'),
          child: CreatePost(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('factor_oreder')) {
      pathPatterns.add(
        BeamPage(
          key: ValueKey('/factor_oreder'),
          child: FactorOreder(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('all_factor_oreder')) {
      pathPatterns.add(
        BeamPage(
          key: ValueKey('/all_factor_oreder'),
          child: ListOfFuctory(),
        ),
      );
    }

    // if (state.uri.pathSegments.contains('factorry')) {
    //   pathPatterns.add(
    //     BeamPage(
    //       key: ValueKey('/factorry'),
    //       child: factorry(),
    //     ),
    //   );
    // }
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
    final String? profile = state.pathParameters['profile'];
    if (state.uri.pathSegments.contains('profile')) {
      pathPatterns.add(
        BeamPage(
          key: ValueKey('profile/$profile'),
          child: Profile(route: profile),
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
    final String? catgoryname = state.pathParameters['category'];
    if (state.uri.pathSegments.contains('category')) {
      if (catgoryname != null) {
        pathPatterns.add(BeamPage(
          key: const ValueKey('category/'),
          child: Category(catgory: catgoryname),
        ));
      }
    }
    final String? my = state.pathParameters['meProduct'];
    if (state.uri.pathSegments.contains('meProduct')) {
      if (my != null) {
        pathPatterns.add(BeamPage(
          key: const ValueKey('meProduct/'),
          child: MyCategory(catgory: my),
        ));
      }
    }
    if (state.uri.pathSegments.contains('Contact_As')) {
      pathPatterns.add(
        BeamPage(
          key: const ValueKey('Contact_As'),
          child: ContactScreen(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('About_As')) {
      pathPatterns.add(
        BeamPage(
          key: const ValueKey('About_As'),
          child: Plog(),
        ),
      );
    }
    if (state.uri.pathSegments.contains('blog')) {
      pathPatterns.add(
        BeamPage(
          key: const ValueKey('blog'),
          child: Plog(),
        ),
      );
    }

    final String? tradecontactas = state.pathParameters['tradecontactas'];
    if (state.uri.pathSegments.contains('tradecontactas')) {
      if (tradecontactas != null) {
        pathPatterns.add(BeamPage(
          key: ValueKey('tradecontactas/$tradecontactas'),
          child: TradeContactAs(tradeProfile: tradecontactas),
        ));
      }
    }
    final String? Request_of_quotation =
        state.pathParameters['Request_of_quotation'];
    if (state.uri.pathSegments.contains('Request_of_quotation')) {
      pathPatterns.add(
        BeamPage(
          key: const ValueKey('Request_of_quotation'),
          child: ListUserPost(
            id: Request_of_quotation,
          ),
        ),
      );
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
        '/factor_oreder',
        '/factorry',
        '/category/:category',
        '/product/:product',
        "/profile",
        "/profile/:profile",
        "/Contact_As",
        "/About_As",
        "/blog",
        "/Request_of_quotation/:Request_of_quotation",
        '/meProduct/:meProduct',
        'tradecontactas/:tradecontactas',
        "/all_factor_oreder",
        "/CreatePost"
      ];
}
