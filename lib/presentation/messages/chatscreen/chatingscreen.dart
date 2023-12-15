import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../cubit/state.dart';
import 'chatbubble.dart';

class Chating extends StatelessWidget {
  Chating({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    CubitMessages cubit = CubitMessages.get(context);
    cubit.listUser();
    return Scaffold(
      body: BlocBuilder<CubitMessages, MainMessagesState>(
        builder: (context, state) {
          return Container(
            height: 1000,
            width: 1200,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ChatBubble(
                          massege: '',
                        );
                      }),
                ),
                Expanded(
                  child: SizedBox(
                    height: 400,
                    width: 1000,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                                hintText: 'Send a Message',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                        color: Colors.orange.shade600))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                              onTap: () {
                                cubit
                                    .sendMessege({"masseges": controller.text});
                              },
                              child: Icon(
                                Icons.send,
                                color: Colors.orange[600],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
