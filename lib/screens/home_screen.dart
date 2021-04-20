import 'package:auto_entrepreneur_app/shared/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      bottomNavigationBar: BottonNavigationBar(),
    );
  }
}
