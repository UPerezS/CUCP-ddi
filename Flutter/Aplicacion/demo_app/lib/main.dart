//import 'package:demo_app/presentation/screens/counter/counter_Screen.dart';
//import 'package:demo_app/presentation/screens/counter/counter_function_screen.dart';
import 'package:demo_app/presentation/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.amber
      ),
      darkTheme: ThemeData.dark(),
      home: const LoginScreen()
    );
  }
}