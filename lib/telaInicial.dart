
import 'package:flutter/material.dart';
import 'package:meus_dentinhosapp/sobre.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Meus Dentinhos", textAlign: TextAlign.center),
        backgroundColor: Colors.transparent,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Lais"),
              accountEmail: new Text("laiscbergamo@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'img/user.png',
                  scale: 0.1,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new ListTile(
                    title: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'img/home.png',
                            scale: 8.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        new Text('Home', style: TextStyle(fontSize: 15.0)),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/tela1");
                    }),
              ],
            ),
            new Divider(
              color: Colors.black12,
              thickness: 2.0,
            ),
            new ListTile(
              title: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'img/diario2.png',
                      scale: 4.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  new Text(
                    'Diário do dente',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/telad');
              },
            ),
            new Divider(
              color: Colors.black12,
              thickness: 2.0,
            ),
            new ListTile(
              title: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'img/about.png',
                      scale: 8.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  new Text(
                    'Sobre',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Sobre()));
              },
            ),
            new Divider(
              color: Colors.black12,
              thickness: 2.0,
            ),
            new ListTile(
              title: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'img/sair.png',
                      scale: 10.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  new Text(
                    'Sair',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, "/telal");
              },

              // Navigator.pushNamed(context, '/telal');
            )
          ],
        ),
      ),
      body: new SingleChildScrollView(
        padding: new EdgeInsets.all(32.0),
        child: Container(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Card(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: new Container(
                  padding: new EdgeInsets.all(30.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Bebê',
                            style: TextStyle(fontSize: 40.0),
                            textAlign: TextAlign.center,
                          ),
                          Image.asset(
                            'img/babys.png',
                            scale: 6.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      RaisedButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Abrir",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        color: Colors.blueAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, "/telab");
                        },
                      ),
                    ],
                  ),
                ),
              ),
              new Card(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Criança',
                            style: TextStyle(fontSize: 40.0),
                            textAlign: TextAlign.center,
                          ),
                          Image.asset(
                            'img/kid.jpg',
                            scale: 6.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      RaisedButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Abrir",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        color: Colors.blueAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, "/telac");
                        },
                      ),
                    ],
                  ),
                ),
              ),
              new Card(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: new Container(
                  padding: new EdgeInsets.all(30.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Adolescente',
                            style: TextStyle(fontSize: 30.0),
                            textAlign: TextAlign.center,
                          ),
                          Image.asset(
                            'img/ball.png',
                            scale: 6.5,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      RaisedButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Abrir",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        color: Colors.blueAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, "/telaa");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
