import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LargeField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  const LargeField({super.key, required this.hint, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hint!,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: TextFormField(
              maxLines: 40,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppLocalizations.of(context)!.thefieldisempty;
                }
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: hint!,
              ),
              controller: controller!,
            ),
          ),
        ],
      ),
    );
  }
}
