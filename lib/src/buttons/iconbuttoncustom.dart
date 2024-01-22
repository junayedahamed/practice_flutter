import 'package:flutter/material.dart';

class iconbuttoncustom extends StatelessWidget {
  const iconbuttoncustom({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: (icon),
      hoverColor: Colors.blue,
    );
  }
}
