import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/state.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitMessages, MainMessagesState>(builder: (context, i) {
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
                      height: 40,
                      width: 400,
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Container(),
                          const Text("name"),
                        ],
                      ),
                    )),
              );
            }),
      );
    });
  }
}
