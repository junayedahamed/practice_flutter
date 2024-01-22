import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton.filledTonal(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 25,
        ),
        style: IconButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
