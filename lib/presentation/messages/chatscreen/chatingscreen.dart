import 'package:flutter/material.dart';
import '../../profile/cubit/names_cubit.dart';
import 'chatbubble.dart';

class Chating extends StatelessWidget {
  Chating(
      {super.key,
      required this.receiver,
      required this.controllerText,
      required this.me});
  final String? receiver;
  final String? me;
  final TextEditingController? controllerText;

  @override
  Widget build(BuildContext context) {
    NamesCubit cubit = NamesCubit.get(context);
    cubit.getProfie();
    cubit.getMessages(receiver!);
    return Container(
      height: 400,
      width: 500,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: cubit.listmaseges.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                    massege: cubit.listmaseges[index]["messages"],
                  );
                }),
          ),
          Expanded(
            child: SizedBox(
              height: 400,
              width: 500,
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: TextField(
                      controller: controllerText!,
                      decoration: InputDecoration(
                        hintText: 'Send a Message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () {
                          cubit.SendMessages(receiver, controllerText!.text);
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
  }
}
