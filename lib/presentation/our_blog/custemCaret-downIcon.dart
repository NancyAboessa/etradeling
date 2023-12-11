import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Caret_down_icon extends StatelessWidget {
  const Caret_down_icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(16.0),
        color: CupertinoColors.black.withOpacity(0.1),
      ),
      child: const Icon(
        FontAwesomeIcons.angleDown,
      ),
    );
  }
}
