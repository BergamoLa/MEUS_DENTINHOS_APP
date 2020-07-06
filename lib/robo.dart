import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'roboresp.dart';

class InteracaoRobo1 extends StatefulWidget {
  @override
  _StateInteracaoRobo createState() => _StateInteracaoRobo();
}

class _StateInteracaoRobo extends State<InteracaoRobo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Robô'),
          
        ),
        body: new SingleChildScrollView(
            child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  colors: [Colors.lightBlue[200], Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              children: <Widget>[
                Text("Olá amiguinho, já escovou os dentes hoje?",
                    style: TextStyle(fontSize: 28, color: Colors.white)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        'SIM',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RespostaSim()),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        'NÃO',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Colors.blue,
                      onPressed: _launchURL,
                    ),
                  ],
                ),

                Image.asset('img/Robo.png',
                    scale: 1,
                    fit: BoxFit
                        .fitWidth) //dá para definir tamanho da imagem utilizando height, width e scale. Utilizar também fit: Boxfit.
              ],
            ),
          ),
        )));
  }
}

_launchURL() async {
  if (await canLaunch('https://www.youtube.com/watch?v=XFz1Gwb1OXY')) {
    await launch('https://www.youtube.com/watch?v=XFz1Gwb1OXY');
  } else {
    throw 'Could not launch https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw';
  }
}
