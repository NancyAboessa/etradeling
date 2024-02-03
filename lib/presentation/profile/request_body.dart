import 'package:flutter/material.dart';

class RequestBody extends StatelessWidget {
  const RequestBody({super.key, required this.list, required this.listId});
  final List list;
  final List listId;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      width: 1200,
      child: ListView.builder(
          itemCount: list.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (c, i) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 20, bottom: 20.0, right: 400.0),
              child: Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.orange.shade800,
                    )),
                child: Row(
                  children: [
                    Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(list[i]["firstImage"]),
                        fit: BoxFit.fill,
                      )),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("name:   "),
                            Text(list[i]["Product_Name"]),
                          ],
                        ),
                        Row(
                          children: [
                            Text("id:   "),
                            Text(list[i]["ispending"] == true
                                ? "MBGmhSJnCXlqrz4tvgQO"
                                : listId[i]),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
