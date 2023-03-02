import 'package:flutter/material.dart';
import 'package:prueba/src/screens/table.dart';
import 'my_home.dart';
import 'recuperar.dart';
import 'my_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      title: "Unique Systems",
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHome(),
        "/recuperar": (context) => const Recuperar(),
        "/events" : (context) => const MyTable(),
      },
    );
  }
}