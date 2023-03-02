import 'package:flutter/material.dart';

class MyTable extends StatelessWidget
{
  const MyTable({super.key});
  @override
  Widget build(context)
  {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          Text("Evento"),
          Text("Evento"),
          Text("Evento"),
          Text("Evento"),
        ],
      ),
    );
  }
}