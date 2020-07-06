import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sobre'),
      ),
      body: new SingleChildScrollView(
        padding: new EdgeInsets.all(15.0),
        child: Container(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'Desenvolvedoras ',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              Column(
                children: <Widget>[
                  new Card(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.lightBlue,
                    child: new Container(
                      padding: new EdgeInsets.all(30.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text('Lais Caroline Bergamo ',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text('Email: laiscbergamo@gmail.com',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text(' código: 825483',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: const Color(0xFF778899),
                    child: new Container(
                      padding: new EdgeInsets.all(30.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text('Amanda Carvalheiro',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text('Email: Amandacarvalheiro@gmail.com',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('Códigp: 764224',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Sobre Meus Dentinhos',
                            maxLines: 10,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'img/logo2.png',
                              scale: 9.0,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      ' Meus dentinhos foi desenvolvido para ajudar pais e mães, a cuidar melhor da saúde bucal de seus filhos, ele contem informações atualizadas vindas direto do ministério da saúde.   ',
                      maxLines: 10,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
