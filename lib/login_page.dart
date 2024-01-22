// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _obs = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 500, right: 600, top: 280),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text("email"),
                  icon: Icon(Icons.manage_accounts),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 500, right: 600, top: 20),
              child: TextFormField(
                obscureText: _obs,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obs = !_obs;
                      });
                    },
                    icon: _obs
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  label: const Text("password"),
                  icon: const Icon(Icons.lock),
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 50,
            ),
            FilledButton(
              onPressed: () {},
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
