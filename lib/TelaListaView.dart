import 'package:flutter/material.dart';

class TelaListaView extends StatefulWidget {
  @override
  _TelaListaViewState createState() => _TelaListaViewState();
}

class _TelaListaViewState extends State<TelaListaView> {
  List _itens = [];

  void _carregarItens() {
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição ${i} ipsum dolor sit amet.";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Listview"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice) {
//              Map<String, dynamic> item = _itens[indice];
//              print("Item ${ item["titulo"] }");
              return ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(_itens[indice]["titulo"]),
                          titlePadding: EdgeInsets.all(15),
                          titleTextStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                          content: Text(_itens[indice]["descricao"]),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.9),
                        );
                      });
                },
                onLongPress: () {},
                title: Text(_itens[indice]["titulo"]),
                subtitle: Text(_itens[indice]["descricao"]),
              );
            }),
      ),
    );
  }
}
