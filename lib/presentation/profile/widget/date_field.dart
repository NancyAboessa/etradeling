import 'package:flutter/material.dart';

class TextFieldDate extends StatefulWidget {
  const TextFieldDate({
    required this.controller,
    required this.label,
    super.key,
  });
  final String? label;
  final TextEditingController controller;

  @override
  State<TextFieldDate> createState() => _TextFieldDateState();
}

class _TextFieldDateState extends State<TextFieldDate> {
  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 330,
      child: TextFormField(
        controller: widget.controller,
        readOnly: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.zero, // No rounded corners
            ),
            hintText: selectedDate.toString().isEmpty || selectedDate == null
                ? "dateOfEstablishment"
                : "${selectedDate!.day.toString()}-${selectedDate!.month.toString()}-${selectedDate!.year.toString()}"),
        onTap: () {
          _selectDate(context);
        },
      ),
    );
  }
}
