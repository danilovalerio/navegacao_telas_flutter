import 'package:flutter/material.dart';

class TelaListaView extends StatefulWidget {
  @override
  _TelaListaViewState createState() => _TelaListaViewState();
}

class _TelaListaViewState extends State<TelaListaView> {

  List _itens = [];

  void _carregarItens(){
    for(int i=0; i<=10; i++){
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
        padding: EdgeInsets.all(32),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice) {
//              Map<String, dynamic> item = _itens[indice];
//              print("Item ${ item["titulo"] }");
              return ListTile(
                title: Text(_itens[indice]["titulo"]),
                subtitle: Text( _itens[indice]["descricao"]),
              );
            }),
      ),
    );
  }
}
