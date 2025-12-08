
import 'package:flutter/material.dart';
 
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold (
        backgroundColor: const Color.fromARGB(255, 236, 222, 222),
        body:  Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              const Icon(
                Icons.person,
                size: 150,
                color: Colors.blueAccent,
                ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex:  2,
                      child: Text("Informe seu email")),
                    Expanded(flex: 3,child: Text("Email")),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text("Informe a senha")),
                    Expanded(flex: 3,child: Text("Senha")),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 40,
                alignment: Alignment.center,
                child: Text("Botão"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 40,
                alignment: Alignment.center,
                child: Text("Cadastro"),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}