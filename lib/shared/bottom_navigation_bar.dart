import 'package:flutter/material.dart';

class BottonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.euro),
          label: 'Incomes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin_outlined),
          label: 'Clients',
        ),
      ],
      onTap: (int idx) {
        switch (idx) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/incomes');
            break;
          case 2:
            Navigator.pushNamed(context, '/clients');
        }
      },
    );
  }
}
