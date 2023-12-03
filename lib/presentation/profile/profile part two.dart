import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widget/CustomMaterialButtom.dart';
import 'widget/CustomTextField.dart';

class Pro extends StatelessWidget {
  Pro({
    super.key,
    required this.cubit,
  });
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController textController = TextEditingController();
  final List<String> countryCodes = [
    '+1',
    '+44',
    '+91',
    '+81',
    '+86',
    '+20'
  ]; // Add your desired country codes
  final cubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: SizedBox(
        width: 820,
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'My Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            //image
            Stack(
              children: [
                //image viewer
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black26,
                      )),
                ),
                //icon
                Padding(
                  padding: const EdgeInsets.only(top: 60, right: 70),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.grey[300], // <-- Button color
                    ),
                    child: const Icon(FontAwesomeIcons.pen,
                        size: 15, color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'General Information',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            //PART TWO
            const SizedBox(
              height: 5,
            ),
            //text field and name and phone
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Name'),
                    textField(controller: textController),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Phone number'),
                    textField(
                      controller: phoneNumberController,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomMaterialButtom(
              text: 'Save',
              width: 150,
              cubit: cubit,
              data: {
                'name': textController.text,
                'phone': phoneNumberController.text,
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            const Text(
              'Security',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            // CustomMaterialButtom(text: 'Change Password',width: 200,),
          ],
        ),
      ),
    );
  }
}
