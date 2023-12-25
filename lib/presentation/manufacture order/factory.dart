import 'package:etradeling/presentation/home_screen/appbar.dart';
import 'package:flutter/material.dart';

import '../home_screen/home_body/components/footer.dart';

class factorry extends StatelessWidget {
  const factorry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainAppBar(),
            SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tender',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 30),
                  ),
                ],
              ),
            SizedBox(height: 20,),
            Container(
              width: 700,
              height: 100,
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  label: Text("Enter Your Offer ",),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: MaterialButton(onPressed: (){},
                child: Text('publish',
                  style: TextStyle(color: Colors.white),
                ),
                height: 60,
              ),
            ),
            SizedBox(height: 100),
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
