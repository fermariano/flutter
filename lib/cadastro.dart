import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  String _generoSelecionado = 'Masculino'; // Inicializa o gênero selecionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 89, 91, 223),
          centerTitle: true,
          title: const Text("Tela de Cadastro"),
        ),
        drawer: const Drawer(
          child: Center(child: Text("Menu")),
        ),
        body: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextField(
                  decoration: InputDecoration(labelText: "Digite seu nome"),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(labelText: "Digite seu email"),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true, // Esconde o texto
                  decoration: InputDecoration(labelText: "Digite sua senha"),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true, // Esconde o texto
                  decoration: InputDecoration(labelText: "Confirme sua senha"),
                ),
                const SizedBox(height: 20),
                // add as opções de gênero
                ListTile(
                  title: const Text("Masculino"),
                  leading: Radio<String>(
                    value: 'Masculino',
                    groupValue: _generoSelecionado,
                    onChanged: (String? valor) {
                      setState(() {
                        _generoSelecionado = valor!; // atualiza o genero selecionado
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Feminino"),
                  leading: Radio<String>(
                    value: 'Feminino',
                    groupValue: _generoSelecionado,
                    onChanged: (String? valor) {
                      setState(() {
                        _generoSelecionado = valor!; // atualiza o genero selecionado tbm
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Outro"),
                  leading: Radio<String>(
                    value: 'Outro',
                    groupValue: _generoSelecionado,
                    onChanged: (String? valor) {
                      setState(() {
                        _generoSelecionado = valor!; // atualiza o genero selecionado tbm
                      });
                    },
                  ),
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print("Gênero selecionado: $_generoSelecionado");
                  },
                  child: const Text("Confirmar"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage())
                      );
                    },
                    child: const Text("Cadastrar")),
              ],
            ),
          ),
        ),
        
      );
  }
}

