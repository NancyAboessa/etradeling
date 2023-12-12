import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustemTextFeild extends StatelessWidget {
  const CustemTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Name'
            ),
            SizedBox(height: 10),
            TextField(

              decoration: InputDecoration(
                labelText: 'Enter your first name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
                'Email'
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ex : beulah.nienow@hotmail.com',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Subject',
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'what your Subject Title ?',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),

    );
  }
}
