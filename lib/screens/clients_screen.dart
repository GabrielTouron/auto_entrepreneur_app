import 'package:auto_entrepreneur_app/shared/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ClientsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clients'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 70,
                ),
                title: Text('Le Performance'),
                subtitle: Text('Location'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 70,
                ),
                title: Text('Global Movement'),
                subtitle: Text('Location'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
