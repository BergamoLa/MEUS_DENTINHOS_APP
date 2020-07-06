import 'package:flutter/material.dart';

class RespostaSim extends StatefulWidget {
  @override
  _StateRespostaSim createState() => _StateRespostaSim();
}

class _StateRespostaSim extends State<RespostaSim> {
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
                Text("Parabéns, continue assim!",
                    style: TextStyle(fontSize: 28, color: Colors.white)),
                Image.asset('img/Robo.png', scale: 1, fit: BoxFit.fitWidth)
              ],
            ),
          ),
        )));
  }
}
