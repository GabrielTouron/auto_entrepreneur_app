import 'package:auto_entrepreneur_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final authController = useProvider(authControllerProvider);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Autoentrepreneur',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'Connexion',
              textAlign: TextAlign.center,
            ),
            IconButton(
              icon: const Icon(Icons.android),
              onPressed: () async {
                await authController.googleSignIn();
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],
        ),
      ),
    );
  }
}
