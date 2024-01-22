import 'package:flutter/material.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.location_city),
                border: OutlineInputBorder(),
                label: Text("Enter location here"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                label: Text("Password"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300, top: 20, bottom: 20),
              child: FilledButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Save"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
