import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  //para uso no construtor
  String valor;

//  TelaSecundaria(this.valor);
  //com chaves se torna opcional a passagem de parâmetro
  TelaSecundaria({this.valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundária"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text("Segunda tela!"),
            Padding(
              padding: EdgeInsets.all(32),
              child: RaisedButton(
                child: Text("Tela lista"),
                padding: EdgeInsets.all(15),
                onPressed: (){
                  Navigator.pushNamed(context, "/listaview");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}