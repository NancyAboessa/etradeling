import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({
    super.key,
    required this.userName,
    required this.title,
    required this.text,
  });
  final String userName;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.orange[600],
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Ahmed'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.timelapse),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Since 3 min'),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black26,
                  thickness: 1,
                  height: 50,
                  endIndent: 650,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
