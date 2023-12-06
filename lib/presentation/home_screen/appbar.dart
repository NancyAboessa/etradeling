import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class app_bar extends StatelessWidget {
  const app_bar({super.key});

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
    );
  }

}

