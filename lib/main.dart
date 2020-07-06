import 'package:flutter/material.dart';
import 'package:meus_dentinhosapp/adolescente.dart';
import 'roboresp.dart';
import 'diario.dart';
import 'TelaInicial.dart';
import 'sign_.dart';
import 'criancas.dart';
import 'bebes.dart';
import 'adolescente.dart';
import 'registro.dart';
import 'robo.dart';
import 'escrever.dart';
import 'escolha.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Meus dentinhos",
    home: SignIn(),
    routes: {
      "/tela1": (context) => TelaInicial(),
      "/telac": (context) => Criancas(),
      "/telab": (context) => Bebes(),
      "/telaa": (context) => Adolescentes(),
      "/telal": (context) => SignIn(),
      "telaca": (context) => RegistrarPage(),
      "/telar": (context) => InteracaoRobo1(),
      "/telad": (context) => MeuDiario(),
      "/telae": (context) => EscreverNoDiario(),
      "/telarr": (context) => RespostaSim(),
      "/telaesco": (context) => TelaEscolha(),
    },
    theme: ThemeData(
      fontFamily: 'Raleway',
    ),
  ));
}
