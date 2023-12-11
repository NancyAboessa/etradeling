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
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your first name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
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
