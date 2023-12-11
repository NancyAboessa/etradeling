import 'package:etradeling/presentation/profile/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

import '../home_screen/home_body/components/CustomMaterialButtom.dart';

class contact_screen extends StatelessWidget {
  const contact_screen({super.key});

  get textController => null;

  @override
  Widget build(BuildContext context) {
    var cubit;
    return  SingleChildScrollView(
      child: Center(
        child: Container(
          width: 700,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                         const Text(
                          'Know More',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
            
                        ),
                        Text(
                          'Contact Us',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            color: Colors.orange[600],
                          ),
                        ),
                      ],
                    ),
            
            
            
                  ],
                ),
                 Text(
                    'Let’s Us Hear From you',
                    style:  TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Row(
                       children: [
                         TextField(
                           decoration: InputDecoration(
                             labelText: 'Enter your fisrt name',
                             border: OutlineInputBorder(),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
              CustomMaterialButtom(
                  text: 'Send',
                  color: Colors.black,
                  coolor: Colors.white,
                ),
        
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//                    Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text('Name'),
//                             FocusScope(
//                               node: FocusScopeNode(),
//                               child: textField(
//                                 controller: textController,
//                                 label: cubit.map["name"] != null &&
//                                         cubit.map.isNotEmpty
//                                     ? cubit.map["name"]
//                                     : "name",
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text('Phone number'),
//                             FocusScope(
//                               node: FocusScopeNode(),
//                               child: textField(
//                                 controller: phoneNumberController,
//                                 label: cubit.map["phone"] != null &&
//                                         cubit.map.isNotEmpty
//                                     ? cubit.map["phone"]
//                                     : "phone",
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
