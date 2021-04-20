import 'package:auto_entrepreneur_app/screens/clients_screen.dart';
import 'package:auto_entrepreneur_app/screens/home_screen.dart';
import 'package:auto_entrepreneur_app/screens/incomes_screen.dart';
import 'package:auto_entrepreneur_app/screens/login_screen.dart';
import 'package:auto_entrepreneur_app/screens/profile_screen.dart';
import 'package:auto_entrepreneur_app/screens/register_screen.dart';
import 'package:auto_entrepreneur_app/controllers/auth_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // final authControllerState = useProvider(authControllerProvider.state);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Auto entrepreneur'),
//       ),
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             // linearGradient ?
//           ),
//           LoginScreen()
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => context
//             .read(authControllerProvider)
//             .signUp('test.test@gmail.com', 'testtest'),
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
