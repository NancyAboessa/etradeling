import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ourblog_screen extends StatelessWidget {
  const ourblog_screen({super.key});

  get suffixIcon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 700,
            alignment: Alignment.center,
            child: Column(
              children: [
                 Stack(
                   alignment: AlignmentDirectional.center,
                   children: [
                     Container(
                       height: 200,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         color: Colors.black,
                       ),
                     ),
                     Column(
                       children: [
                         Text(
                           'We would help you',
                           style: TextStyle(
                             color: Colors.white,
                           ),
                         ),
                         SizedBox(
                           height: 10.0,
        
                         ),
                         Text(
                           'Frequently asked questions',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 30,
                             color: Colors.orange[600],
                           ),
                         ),
                       ],
                     ),
        
        
        
                   ],
                 ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:70 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How Can i pay this products online ?',
                        ),
                        Text(
                          'We are the first e-commerce platform in the Middle East for Industries and Industry Services, and we can help your business to get competitive prices in the markets of Egypt, the Middle East and Africa. We also provide commercial shipping services inside and outside the Egyptian market.',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
        
        
                      ],
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:70 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How can I make a purchase on the etradeling platform?',
                        ),
                        Text(
                          'You can start first by visiting the home page, and then searching for the desired product, and you will find a wide range of items and manufacturers or suppliers that you can choose from. After narrowing down your search options, you should compare the products. And after you reach the decision You can make the purchase from the platform (optional). The process can also be done by direct contact with the factory or supplier',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
        
        
                      ],
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:70 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Are there subscription plans for the buyer on the etradeling platform?',
                        ),
                        Text(
                          'There are no subscription plans for the buyer and there are no commissions on purchases. The buyer account is completely free',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
        
        
                      ],
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:70 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How Can i pay this products online ?',
                        ),
                        Text(
                          'We are the first e-commerce platform in the Middle East for Industries and Industry Services, and we can help your business to get competitive prices in the markets of Egypt, the Middle East and Africa. We also provide commercial shipping services inside and outside the Egyptian market.',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
        
        
                      ],
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:70 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Does the etradeling platform provide shipping services?',
                        ),
                        Text(
                          'Yes, the platform provides various shipping services, and it is an optional service. All you have to do is request a quote for the shipping price according to the shipment data, and we will reply to you with shipping costs as soon as possible.',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
        
        
                      ],
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:70 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How does the etradeling platform help increase my business?',
                        ),
                        Text(
                          'The etradeling platform helps businesses open new markets and increase the capacity of the online wholesale market. Through the trade platform, you can display your products, display them to buyers all over the world, market different industries on search engines, and also through social media platforms, target your potential buyers, and provide direct contact between you and your new customers.',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
        
        
                      ],
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  height:70 ,
                  width: 700,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,)
                  ),
                  child:const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Does the etradeling platform help in the export process?',
                        ),
                        Text(
                          'In line with Egypt\'s vision 2030 to increase exports, we provide all logistical services with the best companies to deliver products to all over the world',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        ),
        
        
                      ],
                    ),
        
                  ),
                ),
        
        
        
              ],
            ),
          ),

        ),

      ),
    );
  }
}
