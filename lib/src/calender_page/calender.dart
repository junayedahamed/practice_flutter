import 'package:flutter/material.dart';

class CalendarMonth extends StatelessWidget {
  const CalendarMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return DatePickerDialog(
      firstDate: DateTime(1850),
      lastDate: DateTime(2100),
      currentDate: DateTime.now(),
    );
  }
}
