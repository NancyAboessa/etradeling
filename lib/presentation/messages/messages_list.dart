import 'package:flutter/material.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
              child: InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Container(),
                        Text("name"),
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
