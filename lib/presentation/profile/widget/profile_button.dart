import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileButton extends StatelessWidget {
  final cubit;
  final Map<String, dynamic> data;
  const ProfileButton({super.key, required this.cubit, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 250,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child:  Text(
      AppLocalizations.of(context)!.save,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
