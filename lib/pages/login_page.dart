import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Nike'),
          const Text('Login'),
          const TextField(),
          const TextField(),
          FilledButton(
            onPressed: () => Navigator.of(context).pushNamed('/store'),
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
