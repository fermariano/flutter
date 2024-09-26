import 'package:flutter/material.dart';


class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  
  List _itens = [];
  void _carregarItens() {
    _itens = [];
    for (int i = 0; i <= 20; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo ${i} da lista";
      item["descricao"] = "Você clicou no item ${i} da lista";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 89, 91, 223),
          centerTitle: true,
          title: const Text("Listview"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 21,
            itemBuilder: (context, indice) {
              print("item ${indice}");
              return ListTile(
                title: Text(indice.toString()),
                subtitle: Text("subtitulo"),

                onTap: () {
                 // print("Clique com onTap ${indice}");
                 showDialog(context: context, 
                 builder: (context) {
                  return AlertDialog(
                    title: Text("Alerta"),
                    titleTextStyle: const TextStyle(
                      fontSize: 25,
                    ),
                    content: Text(_itens[indice]["descricao"]),
                    actions: <Widget>[
                      FloatingActionButton(
                        onPressed: () {
                          print("Selecionado sim");
                          Navigator.pop(context);
                        },
                        child: Text("sim")
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            print("selecionado não");
                            Navigator.pop(context);
                          },
                          child: Text("não")
                         ),
                    ],
                    
                  );
                 });
                },
                onLongPress: () {
                  print("Clique com onlongpress ${indice}");
                },
              );
            })
        )
        
      );
  }
}

