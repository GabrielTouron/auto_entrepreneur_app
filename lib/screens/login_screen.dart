import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: IconButton(
          icon: const Icon(Icons.ac_unit),
          onPressed: () => Navigator.popAndPushNamed(context, '/'),
        ),
      ),
    );
  }
}
