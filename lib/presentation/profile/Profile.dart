import 'package:etradeling/presentation/profile/profile%20part%20two.dart';
import 'package:flutter/material.dart';
import '../home_screen/appbar.dart';
import 'widget/profile Listview.dart';

class Profile extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController textController = TextEditingController();
  Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainAppBar(),
            Row(
              children: [
                Listnames(),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ProfileData(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (_context) => BlocProvider.value(
// value: BlocProvider.of<CubitMessages>(
// context),
// child: MessagesList(),
// )));
