import 'package:auto_entrepreneur_app/screens/clients_screen.dart';
import 'package:auto_entrepreneur_app/screens/home_screen.dart';
import 'package:auto_entrepreneur_app/screens/incomes_screen.dart';
import 'package:auto_entrepreneur_app/screens/login_screen.dart';
import 'package:auto_entrepreneur_app/screens/profile_screen.dart';
import 'package:auto_entrepreneur_app/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/incomes': (context) => IncomesScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/clients': (context) => ClientsScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
