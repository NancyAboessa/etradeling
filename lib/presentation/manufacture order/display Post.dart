import 'package:flutter/material.dart';

import '../home_screen/appbar.dart';
import '../home_screen/home_body/components/footer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisplayFactory extends StatelessWidget {
  final Map<String, dynamic> map;
  const DisplayFactory({super.key, required this.map});
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
                   AppLocalizations.of(context)!.thisIsmyHeading   ,
                      style: TextStyle(
                        color: Colors.orange[600],
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 5,
                    ),
                    Text(map["name"]),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.timelapse),
                    SizedBox(
                      width: 5,
                    ),
                    Text(AppLocalizations.of(context)!.sincemin),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      map["commint"],
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Divider(
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
