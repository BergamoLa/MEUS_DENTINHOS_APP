import 'package:flutter/material.dart';

class TelaEscolha extends StatefulWidget {
  @override
  _TelaEscolhaState createState() => _TelaEscolhaState();
}

class _TelaEscolhaState extends State<TelaEscolha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Tipo de acesso')),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      'Acesso aos Pais',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    color: Colors.blue,
                    onPressed: () =>
                        {Navigator.pushNamed(context, "/tela1")}, //Laís
                  ),
                  Divider(),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      'Acesso aos Filhos',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, '/telar');
                    }, //Amanda
                  ),
                  Divider(),
                ]),
          ),
        ));
  }
}
