import 'package:flutter/material.dart';

class DropDownCityButton extends StatelessWidget {
  final String? dropdownValue;
  final List<String>? list;
  final fun;
  final double? width;
  const DropDownCityButton({
    super.key,
    required this.list,
    required this.dropdownValue,
    required this.fun,
    required this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("city",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: width!,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54, width: .8),
              borderRadius: BorderRadius.circular(3),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(dropdownValue!),
              value: fun.cityString,
              padding: const EdgeInsets.only(left: 20),
              underline: const SizedBox(
                height: 0,
                width: 0,
              ),
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.black54),
              onChanged: (String? value) {
                fun.getCitylistData(value);
              },
              items: list!.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
