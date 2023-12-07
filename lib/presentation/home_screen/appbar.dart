import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../auth/bloc/login.cubit.dart';
import 'home_body/home_screen.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.orange[500],
          elevation: 60.0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/imeges/etradeling3-1.png"),
                ),
              ),
              Container(
                width: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('search'),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 30),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      var loginCubit;
                      loginCubit.NewPassword();
                    },
                    child: const Text(
                      'Egyption pound',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Icon(FontAwesomeIcons.circleUser, size: 15, color: Colors.black),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'shehab eldin',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    FontAwesomeIcons.heart,
                    size: 15,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Whishlist',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(FontAwesomeIcons.cartShopping,
                      size: 15, color: Colors.black),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'cart',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(FontAwesomeIcons.bell, size: 15, color: Colors.black),
                ],
              ),
            ),
          ],
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value: BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child: const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value:
                            BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value:
                            BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child: const Text(
                    'Our blog ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value:
                            BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child: const Text(
                    'Contact us',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                TextButton(
                  onPressed: () {
                    // loginCubit!.signupPress();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                            value:
                            BlocProvider.of<LoginCubit>(context),
                            child: HomeScreen(),
                          ),
                        ));
                  },
                  child: const Text(
                    'About us',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color:Colors.white,
                  ),
                  child: MaterialButton(onPressed: ()
                  {
                  },
                    child: Text(
                      'Submit RFQ',
                      style: TextStyle(
                        color: Colors.orange[600],
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
