import 'package:flutter/material.dart';
import '../home_screen/appbar.dart';
import '../home_screen/home_body/components/footer.dart';
import 'display Post.dart';

class ListUserPost extends StatelessWidget {
  const ListUserPost({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainAppBar(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 20, bottom: 40),
              child: Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.only(top: 20, left: 20),
                color: Colors.grey.shade200,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("title",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Text("Company Name",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Text("what is cola price ??",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const DisplayFactory();
                }),
            const FooterScreen(),
          ],
        ),
      ),
    );
  }
}
