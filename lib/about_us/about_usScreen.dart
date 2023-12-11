import 'package:etradeling/presentation/home_screen/home_body/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About_us extends StatelessWidget {
  const About_us({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    'Know More',
    style: TextStyle(
    color: Colors.white,
    ),
    ),
    SizedBox(
    height: 10.0,

    ),
    Text(
    'About us',
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
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Container(
                width: 1000,
                height: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              //Text our benifits
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 190, right: 30),
                    child: Text(
                      'Our services',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              //Icons
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 450, top: 20),
                    child: Row(
                      children: [
                        iconColom(
                          text: ' 2020 LOGO. All Rights Reserved.A store to display products and services',
                          texttwo: 'Browse by categories',
                          icon: Icons.home,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        iconColom(
                          text: 'Providing logistical support for transportation',
                          texttwo: 'Fast delivery',
                          icon: FontAwesomeIcons.truckMoving,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        iconColom(
                          text: 'Marketing study for each industry',
                          texttwo: 'Easy payment options',
                          icon: FontAwesomeIcons.nfcDirectional,
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ],
          ),
        ],
    ),
    ),


    ),
    );
  }
}
