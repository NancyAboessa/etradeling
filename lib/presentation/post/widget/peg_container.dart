import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PigContainer extends StatelessWidget {
  const PigContainer({
    super.key,
    required this.title
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 250.0, top: 80),
      child: Container(
        height: 200,
        width: 1000,
        color: Colors.grey.shade100,
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.we_dLoveto_helpyou),
             Text("${title!}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            Text(
              AppLocalizations.of(context)!
                  .tell_suppliers_what_you_need_Themore,
            ),
          ],
        ),
      ),
    );
  }
}
