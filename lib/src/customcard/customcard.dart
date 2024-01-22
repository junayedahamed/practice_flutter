import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});
//  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.blue,
          child: IconButton(
            onPressed: () {},
            alignment: Alignment.topRight,
            icon: const Icon(CupertinoIcons.heart_circle),
          ),
        ),
      ),
    );
  }
}
