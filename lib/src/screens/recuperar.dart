import 'package:flutter/material.dart';

class Recuperar extends StatelessWidget {
  const Recuperar({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperacion de contraseña"),
      ),
      body:const Center(
          child: Column(
            children: <Widget>[
              Text("Recuperar Contraseña"),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Correo",
                ),
              ),
            ],
          ) 
        ),
    );
  }
}
