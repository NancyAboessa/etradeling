import 'package:flutter/material.dart';

class RequestListView extends StatelessWidget {
  const RequestListView({super.key, required this.requestList});
  final List? requestList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 200,
      child: ListView.builder(
          itemCount: requestList!.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(
                              requestList![i]["Product_Certificate"]),
                        )),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
