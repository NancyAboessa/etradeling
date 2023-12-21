import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  const Request({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        height: 450,
        child: Column(
          children: [
            TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                tabs: [
                  GestureDetector(
                    onTap: () {},
                    child: const Tab(
                      text: "pending",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Tab(
                      text: "inProgress",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Tab(
                      text: "finished",
                    ),
                  ),
                ]),
            // list[0],
          ],
        ),
      ),
    );
  }
}
