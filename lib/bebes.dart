import 'package:flutter/material.dart';

class Bebes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bebê (0 a 24 meses)"),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Image.asset(
                  'img/amamentacao.png',
                  scale: 1.5,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'O Bebê',
                maxLines: 10,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'No período da erupção dos dentes, é comum o aparecimento de sintomas sistêmicos tais como salivação abundante, diarréia, aumento da temperatura e sono agitado, mas que,não necessariamente, são decorrentes deste processo. O tratamento deve ser sintomático e quando necessário, realizar investigação de outras causas para os sintomas descritos.',
                maxLines: 30,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Aleitamento materno: excetuando-se situações especiais, deve ser feito com exclusividadeaté os 06 meses de idade. A partir dessa idade, deve-se incentivar o uso progressivo de alimentos em colheres e copos. É importante fator de prevenção da má-oclusão dentária.',
                maxLines: 30,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hábitos bucais - sucção de chupeta ou mamadeira',
                maxLines: 30,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'img/baby.png',
                  scale: 3.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quando a necessidade de sucção não for satisfeita com o aleitamento materno, a chupeta deve ser usada racionalmente, não sendo oferecida a qualquer sinal de desconforto. Utilizar exclusivamente como complementar à sucção na fase em que o bebê necessita deste exercício funcional. Não é recomendável que o bebê durma todo o tempo com a chupeta.',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Em situações adversas, nas quais necessite dar mamadeira ao bebê, não aumentar o furo do bico do mamilo artificial, que serve para o bebê fazer a sucção e aprender a deglutir.',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Promoção da Alimentação Saudável - Amamentação + introdução de alimentos ',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'img/brocolis.png',
                  scale: 3.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'O primeiro passo para ter uma vida mais saudável é garantir que a amamentação seja assegurada para todas as crianças. A amamentação é importantetanto para a mãe como para a criança. É um cuidado para toda a vida.',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' É importante evitar a adição de açúcar, mel, achocolatados e carboidratos ao leite para que as crianças possam se acostumar com o sabor natural deste. Evitar mamadas noturnas. Não passar açúcar, mel ou outro produto que contenha açúcar na chupeta.',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' As crianças devem ser amamentadas exclusivamente com leite materno até os seis meses de idade e, após essa idade, deverá receber alimentação complementar apropriada, continuando a amamentação até a idade de dois anos ou mais.',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Higiene bucal - Limpeza da Cavidade bucal',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Image.asset(
                  'img/dente_limpo.png',
                  scale: 1.5,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'A limpeza da cavidade bucal é normalmente iniciada antes mesmo da erupção dental. Usar um tecido limpo ou gaze embebida em água filtrada ou soro para esfregar a gengiva.',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'A escovação está indicada a partir da erupção do primeiro dente decíduo, não é necessário uso de creme dental devido à possibilidade de ingestão pelo bebê. A partir da erupção dos primeiros molares decíduos pode-se usar o mínimo possível de creme dental (quantidade equivalente a um grão de arroz cru).',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                ' Um cuidado particularmente importante é a freqüência do uso do creme dental, pois acontece ingestão do mesmo nessa idade, podendo causar fluorose. O creme dental deve ser mantido fora do alcance das crianças. A higienização deve ser realizada pelos pais ou responsáveis ',
                maxLines: 40,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Fonte: Ministério da saúde, Caderno de Atenção Básica Nº17.',
                maxLines: 40,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                'Link para acesso: http://bvsms.saude.gov.br/bvs/publicacoes/saude_bucal.pdf',
                maxLines: 40,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Ilustrações: https://pixabay.com/pt/illustrations/',
                    maxLines: 40,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
