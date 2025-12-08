
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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 8,
                    child: Image.network(
                      "http://hermes.digitalinnovation.one/assets/diome/logo.png",
                      height: 125,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Ja tem cadastro?", 
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700 , color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Faça seu login e make the change_" , 
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.person, 
                      color: const Color.fromARGB(255, 114, 0, 167))
                  ),

                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Senha",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: const Color.fromARGB(255, 114, 0, 167),
                    )
                    suffixIcon: Icon(
                      Icons.lock,
                      color: const Color.fromARGB(255, 114, 0, 167),
                    )
                  ),
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                    child: TextButton(onPressed: () {},
                      style: ButtonStyle(
                        // ignore: deprecated_member_use
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 114, 0, 167)),
                      ),
                    child: const Text(
                      "ENTRAR",
                      style: TextStyle(color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  "Esqueci minha senha",
                  style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w400),
                  
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  "Criar conta",
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
      ),
    );
  }
}
