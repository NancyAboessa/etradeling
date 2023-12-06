import 'package:etradeling/presentation/post/create_post.dart';
import 'package:etradeling/presentation/post/cubit/cubite.dart';
import 'package:etradeling/presentation/post/cubit/state.dart';
import 'package:etradeling/presentation/profile/Profile.dart';
import 'package:etradeling/presentation/profile/cubit/names_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            width: 800,
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
          padding: const EdgeInsets.only(right: 40.0),
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                                value: BlocProvider.of<NamesCubit>(context),
                                child: Profile(),
                              )));
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.circleUser,
                        size: 15, color: Colors.black),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'shehab eldin',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
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
    );
  }
}
