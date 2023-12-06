import 'package:etradeling/presentation/profile/cubit/names_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../auth/bloc/login.cubit.dart';
import 'home_body/home_screen.dart';

class app_bar extends StatelessWidget {
  const app_bar({super.key});

  get loginCubit => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[600],
        elevation: 60.0,
        title:Container(
      decoration:BoxDecoration(
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
              Text(
    'search'
    ),
            ],

              ),
                ),
             actions: [
         Row(
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
               width:40.0 ,
             ),
             Icon(
                 FontAwesomeIcons.circleUser,
                 size: 15, color: Colors.white
             ),
             SizedBox(
               width: 5.0,
             ),
             Text(
               'Sign up',
               style: TextStyle(
                 fontSize: 15.0,
               ),
             ),
             SizedBox(
               width: 20.0,
             ),

             Icon(
               FontAwesomeIcons.heart,
               size: 15, color: Colors.white,
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

             Icon(
                 FontAwesomeIcons.cartShopping,
                 size: 15, color: Colors.white
             ),
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

             Icon(
                 FontAwesomeIcons.bell,
                 size: 15, color: Colors.white
             ),


           ],
         ),

       ],
      
      
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 30.0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 200.0,
                ),
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
                                value:
                                BlocProvider.of<LoginCubit>(context),
                                child: home_screen(),
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
                                child: home_screen(),
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
                                child: home_screen(),
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
                                child: home_screen(),
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
                                child: home_screen(),
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
        ),
      ),
    );
  }

}

