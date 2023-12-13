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
    TextEditingController controller=TextEditingController();
    var cubit = CubitMessages.get(context);
    return Scaffold(
      body: BlocBuilder<CubitMessages, MainMessagesState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return chatBubble();

                }
                ),),
              TextField(
                controller:controller ,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.send, color: Colors.orange[600],),
                    hintText: 'Send a Message',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.orange.shade600)
                    )
                ),

              ),
            ],
          );
        },
      ),
    );
  }
}

