import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro.dart';
import 'package:flutter_application_1/home.dart';

class LoginPage extends StatelessWidget {
  get label => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 89, 91, 223),
          centerTitle: true,
          title: const Text("Tela de login"),
        ),
        drawer: const Drawer(
          child: Center(child: Text("")),
        ),
        body: Align(
          alignment: Alignment.center,
          
          child: SizedBox(
              width: 200,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const TextField(
                  decoration: InputDecoration(labelText: "Digite seu email"),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(labelText: "Digite sua senha"),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomePage())
                          );
                        }, 
                        child: const Text("Entrar")),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text("Novo aqui?"),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => CadastroPage())
                          );
                        }, 
                        child: const Text("Cadastre-se")),
                  ],
                )
              ])),
              
        ),
        
      );

  }
}
