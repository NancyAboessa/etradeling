import 'package:etradeling/reuseable_componants/CustomMaterialButtom.dart';
import 'package:etradeling/reuseable_componants/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro extends StatelessWidget {
   Pro({super.key});
  final TextEditingController _phoneNumberController = TextEditingController();
  final List<String> countryCodes = ['+1', '+44', '+91', '+81', '+86','+20']; // Add your desired country codes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[600],
        title: const Text('profile page',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,),
        ),),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('My Account',
            style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 30,
              color: Colors.black,
          ),
          ),
         const SizedBox(height: 5,),
          //image
          Stack(
            children:[
              //image viewer
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black26,
                    )
                ),
              ),
              //icon
              Padding(
                padding: const EdgeInsets.only(top: 60,right:70),
                child: ElevatedButton(
                  onPressed: () {},

                  child: const Icon(FontAwesomeIcons.pen,
                      size: 15,
                      color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.grey[300], // <-- Button color
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 5,),
          const Text('General Information',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          //PART TWO
          const SizedBox(height: 5,),
          //text field and name and phone
          const Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 290),
                    child: Text('Name'),
                  ),
                  textField(),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 240),
                    child: Text('Phone number'),
                  ),
                  textField(),

                ],
              ),
            ],
          ),
          const SizedBox(height:20 ,),
          CustomMaterialButtom(text: 'Save',width: 150,),
          const SizedBox(height:10 ,),
          const Expanded(
            child: Divider(
              color: Colors.black,
              thickness: 6,
            ),
          ),
          const Text('Security',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          const SizedBox(height: 10,),
          CustomMaterialButtom(text: 'Change Password',width: 200,),
        ],
      ),
    );
      Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text('My Account',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5,),
          Stack(
            children:[
              //image viewer
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black26,
                    )
                ),
              ),
              //icon
              Padding(
                padding: const EdgeInsets.only(top: 60,right:70),
                child: ElevatedButton(
                  onPressed: () {},

                  child: const Icon(FontAwesomeIcons.pen,
                      size: 15,
                      color: Colors.white),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.grey[300], // <-- Button color
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 5,),
          const Text('General Information',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          //PART TWO
          const SizedBox(height: 5,),
          Row(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 290),
                    child: Text('Name'),
                  ),
                  Container(
                    height: 38,
                    width: 330,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero, // No rounded corners
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20,),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 240),
                    child: Text('Phone number'),
                  ),
                  Container(
                    height: 38,
                    width: 330,
                    child: TextField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration:  InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        hintText: ' phone number',
                        prefixIcon: GestureDetector(
                          onTap: () {
                            _showCountryCodePicker(context);
                          },
                          child: const Icon(Icons.arrow_drop_down),
                        ),

                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height:20 ,),
          CustomMaterialButtom(text: 'Save',width: 150,),
          const SizedBox(height:10 ,),
          const Divider(
            color: Colors.black,
            thickness: 6,
          ),
          const Text('Security',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          const SizedBox(height: 10,),
          CustomMaterialButtom(text: 'Change Password',width: 200,),

        ],
      ),
    ) ;

  }
  void _showCountryCodePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: 200.0,
          child: ListView.builder(
            itemCount: countryCodes.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(countryCodes[index]),
                onTap: () {
                  _phoneNumberController.text = countryCodes[index];
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

}

// Expanded(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//               Text('My Account',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 30,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 5,),
//               Stack(
//                 children:[
//                   //image viewer
//                   Container(
//                     height: 90,
//                     width: 90,
//                     decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         borderRadius: BorderRadius.circular(15),
//                         border: Border.all(
//                           color: Colors.black26,
//                         )
//                     ),
//                   ),
//                   //icon
//                   Padding(
//                     padding: const EdgeInsets.only(top: 60,right:70),
//                     child: ElevatedButton(
//                       onPressed: () {},
//
//                       child: Icon(FontAwesomeIcons.pen,
//                           size: 15,
//                           color: Colors.white),
//                       style: ElevatedButton.styleFrom(
//                         shape: CircleBorder(),
//                         backgroundColor: Colors.grey[300], // <-- Button color
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(height: 5,),
//               Text('General Information',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 30,
//                   color: Colors.black,
//                 ),
//               ),
//               //PART TWO
//               SizedBox(height: 5,),
//               Row(
//                 children: [
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 290),
//                         child: Text('Name'),
//                       ),
//                       Container(
//                         height: 38,
//                         width: 330,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.zero, // No rounded corners
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 20,),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 240),
//                         child: Text('Phone number'),
//                       ),
//                       Container(
//                         height: 38,
//                         width: 330,
//                         child: TextField(
//                           controller: _phoneNumberController,
//                           keyboardType: TextInputType.phone,
//                           decoration:  InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.zero,
//                             ),
//                             hintText: ' phone number',
//                             prefixIcon: GestureDetector(
//                               onTap: () {
//                                 _showCountryCodePicker(context);
//                               },
//                               child: Icon(Icons.arrow_drop_down),
//                             ),
//
//                           ),
//
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height:20 ,),
//               CustomMaterialButtom(text: 'Save',width: 150,),
//               SizedBox(height:10 ,),
//               Divider(
//                 color: Colors.black,
//                 thickness: 6,
//               ),
//               Text('Security',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
//               SizedBox(height: 10,),
//               CustomMaterialButtom(text: 'Change Password',width: 200,),
//
//             ],
//           ),
//         ),
//       ),