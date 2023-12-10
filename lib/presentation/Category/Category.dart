import 'package:etradeling/presentation/home_screen/home_body/components/imageWithText.dart';
import 'package:flutter/material.dart';
import '../home_screen/home_body/components/customListView.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Divider(
              color: Colors.black38,
              indent: 500,
              endIndent: 50,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '7 products found',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                listViewhome(
                  widget: ImageWithText(
                    image: "",
                    name: "",
                  ),
                  items: 6,
                  left: 100,
                  hight: 700,
                  width: 1000,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
