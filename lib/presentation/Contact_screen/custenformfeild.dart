import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustemTextFeild extends StatelessWidget {
  const CustemTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                AppLocalizations.of(context)!.name,
            ),
            SizedBox(height: 10),
            TextField(

              decoration: InputDecoration(
                labelText:AppLocalizations.of(context)!.enteryourfirstname,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
                AppLocalizations.of(context)!.email,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ex : beulah.nienow@hotmail.com',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.subject,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.whatyourSubjectTitle,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),

    );
  }
}
