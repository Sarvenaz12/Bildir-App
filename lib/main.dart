import 'package:dummy_projects/Features/routes.dart';
import 'package:dummy_projects/Features/screenss/login_screen.dart';
import 'package:dummy_projects/pallete.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);

  runApp(const ProviderScope(child: MyApp())); //wrapped in ProviderScope to get access to all providers
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bildir',
      theme: Pallete.lightModeAppTheme,
      home: const LoginScreen(),
    );
  }
}

/*Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bildir',
      theme: Pallete.lightModeAppTheme,
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => loggedOutRoute),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}*/
