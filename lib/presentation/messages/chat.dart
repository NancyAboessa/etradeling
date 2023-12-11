import 'package:etradeling/presentation/messages/cubit/cubit.dart';
import 'package:etradeling/presentation/messages/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitMessages, MainMessagesState>(
        builder: (context, state) {
      return Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemBuilder: (c, i) {
                return Container(
                  color: Colors.orange,
                );
              }),
          TextField(),
        ],
      );
    });
  }
}
