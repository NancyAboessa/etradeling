import 'package:flutter/material.dart';

import '../home_screen/appbar.dart';
import '../home_screen/home_body/components/footer.dart';

class DisplayFactory extends StatelessWidget {
  const DisplayFactory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainAppBar(),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('This Is my Heading',
                          style: TextStyle(
                            color: Colors.orange[600],
                            fontSize: 20,

                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 5,),
                        Text('Ahmed'),
                        SizedBox(width: 10,),
                        Icon(Icons.timelapse),
                        SizedBox(width: 5,),
                        Text('Since 3 min'),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('I want to know if this t-Shirt costs 20 dolor or more or less',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black26,
                      thickness: 1,
                      height: 50,
                      endIndent: 650,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
                height: 350,
                width: double.infinity,
                child: FooterScreen()),
          ],
        ),
      ),
    );
  }
}
