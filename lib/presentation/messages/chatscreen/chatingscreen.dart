import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../profile/cubit/names_cubit.dart';
import 'chatbubble.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                  return cubit.listmaseges[index]["sender"] ==
                          FirebaseAuth.instance.currentUser!.uid
                      ? Padding(
                          padding: const EdgeInsets.only(left: 350.0),
                          child: ChatBubble(
                            massege: cubit.listmaseges[index]["messages"],
                            color: Colors.orange,
                          ),
                        )
                      : ChatBubble(
                          massege: cubit.listmaseges[index]["messages"],
                          color: Colors.grey,
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
                        hintText:  AppLocalizations.of(context)!.searchMesseges,
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
