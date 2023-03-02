import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  secondPage(context)
  {
    Navigator.of(context).pushNamed("/events");
  }
  toRecovery(context)
  {
    Navigator.of(context).pushNamed("/recuperar");
  }
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
              "https://static.vecteezy.com/system/resources/previews/008/442/086/original/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg",
            width: 200,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 30,
              right: 30,
            ),
            child: TextField(
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Correo",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18))
                  )
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(
                top:10,
                left: 30,
                right: 30,
                bottom: 30,
              ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Contraseña",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18))
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
            child: ElevatedButton(
              onPressed: () => secondPage(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: const Size(
                  double.infinity,
                  60,
                ),
              ),
              child: const Text("Iniciar Sesión"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(
                10
              ),
            child: TextButton(
                onPressed: () => toRecovery(context),
                child: const Text("¿Olvidaste tu contraseña?"),
            ),
          ),
        ],
      ),
    );
  }
}