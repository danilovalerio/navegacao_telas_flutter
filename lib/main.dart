import 'package:flutter/material.dart';
import 'package:telas_navegacao_flutter_app/TelaSecundaria.dart';

import 'TelaListaView.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/", //rota inicial
    routes: {
      "/secundaria" : (context) => TelaSecundaria(), //rota nomeada
      "/listaview" : (context) => TelaListaView()
    },
    home: TelaPrincipal(),
    debugShowCheckedModeBanner: false,
  ));
}


class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Ir para segunda tela"),
              padding: EdgeInsets.all(15),
              onPressed: (){
                Navigator.pushNamed(context, "/secundaria");
              },
            )
          ],
        ),
      ),
    );

  }

}