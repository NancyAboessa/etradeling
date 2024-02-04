import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CustomIconBottom extends StatelessWidget {
  CustomIconBottom({
  super.key,
  required this.text,
    required this.icon,
  });
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
         width: 135,
        child: MaterialButton(
              onPressed: () {
              },
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                  ),
                  SizedBox(width: 8.0), // Add space between the icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.downloadonthe,
                        style: TextStyle(
                          fontSize: 10, // Adjust the font size of the small text
                        ),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 15, // Adjust the font size of the larger text
                          fontWeight: FontWeight.bold, // Add bold if needed
                        ),
                      ),
                    ],
                  ),
                ],
              ),



            ),
      );
  }
}
