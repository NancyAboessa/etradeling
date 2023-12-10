import 'package:etradeling/presentation/Category/Cubit/Category%20Cubit.dart';
import 'package:etradeling/presentation/Category/Cubit/category%20state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utls/themes/button/drop_down_button/drop_down_button.dart';
import '../home_screen/appbar.dart';
import '../home_screen/home_body/components/CustomContainerWithCircleAvIcon.dart';
import '../home_screen/home_body/components/customListView.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

          SizedBox(height: 50,),
            Divider(
            color: Colors.black38,
              indent: 500,
              endIndent: 50,
            ),
            SizedBox(height: 5,),
            Text('7 products found',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  height: 400,
                  width: 600,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (_, index) => customContainerWithCircleAvIcon(),
                    itemCount: 6,
                  ),
                )

              ],
            ),
          ],
        ),
    );
  }
}
//         SizedBox(
//            height: 1000,
//            child: GridView.count(
//            crossAxisCount: 4,
//            scrollDirection: Axis.horizontal,
//                    children:  List<Widget>.generate(16, (index) {
//            return customContainerWithCircleAvIcon();
//            }
//            ),
//            ),
//          ),