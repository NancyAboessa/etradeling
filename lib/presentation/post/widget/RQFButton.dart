import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RQFButton extends StatelessWidget {
  final cubit;
  final Map<String, dynamic>? data;
  const RQFButton({super.key, required this.cubit, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        cubit.RQFsend(data);
      },
      child: Container(
        height: 50,
        width: 1000,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          AppLocalizations.of(context)!.submit,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
