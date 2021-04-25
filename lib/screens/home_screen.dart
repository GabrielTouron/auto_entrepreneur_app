import 'package:auto_entrepreneur_app/controllers/auth_controller.dart';
import 'package:auto_entrepreneur_app/shared/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final authControllerState = useProvider(authControllerProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tableau de bord'),
        leading: authControllerState != null
            ? IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () => {
                  context.read(authControllerProvider).signOut(),
                  Navigator.pushNamed(context, '/login')
                },
              )
            : null,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => Navigator.pushNamed(
              context,
              '/profile',
            ),
          )
        ],
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blue[400],
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '1200 €',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Ce mois-ci',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blue[400],
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '12',
                    style: TextStyle(
                      fontSize: 39,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'CLIENTS',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blue[400],
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '3',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'FACTURES',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blue[400],
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '- 150 €',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Par rapport au dernier mois',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blue[400],
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Paiement(s) en attente',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
