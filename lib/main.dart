import 'dart:math';

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
        primarySwatch: Colors.red,
        useMaterial3: false, //coloquei pq o material3 desatualizado com o curso
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;

  int _gerarNumeroAleatorio() {
    Random numeroAleatorio = Random();
    return numeroGerado = numeroAleatorio.nextInt(1000);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Chamando método build");
    return Scaffold(
      appBar: AppBar(title: const Text("Meu App")),
      body: Center(child: Text(numeroGerado.toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            numeroGerado = _gerarNumeroAleatorio();
          });
        },
      ),
    );
  }
}
// iniciar video de "Organizando o Projeto"