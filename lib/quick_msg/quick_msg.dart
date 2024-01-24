import 'package:flutter/material.dart';

class QuickMsg extends StatelessWidget {
  const QuickMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Give a quick feedback"),
      ),
    );
  }
}
