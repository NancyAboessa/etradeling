import 'package:etradeling/presentation/Contact_screen/custenformfeild.dart';
import 'package:flutter/material.dart';

import '../home_screen/home_body/components/CustomMaterialButtom.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1000,
        width: 1800,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                width: 700,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.black,
                        ),
                        child: Column(
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
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        'Let\'s Us Hear From You',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 1000,
                        width: 1800,
                        child: Row(
                          children: [
                            Expanded(child: CustemTextFeild()),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Country',
                                    ),
                                    SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Where you from ?',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Message',
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Your message Here',
                                          border: OutlineInputBorder(),
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
          ),
        ),
      ),
    );
  }
}
