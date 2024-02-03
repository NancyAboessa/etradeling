import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StoreIcon extends StatelessWidget {
  final String? image;
  final String? storeName;
  const StoreIcon({super.key, required this.image, required this.storeName});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 135,
      height: 40,
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset(
              image!,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 5,
              ),
               Text(AppLocalizations.of(context)!.downloadonthe,
                  style: TextStyle(
                    fontSize: 10,
                  )),
              Text(storeName!,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
