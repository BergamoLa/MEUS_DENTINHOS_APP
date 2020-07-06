import 'package:flutter/material.dart';

class Adolescentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adolescentes (10 a 19 anos de idade)'),
      ),
      body: new SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: Image.asset(
                'img/teen1.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'O adolescente',
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
              'As orientações para os adolescentes devem ocorrer em uma linguagem que seja assimilada com facilidade. Em geral, o adolescente não procura a Unidade Básica de Saúde para resolver seus problemas. No entanto, quando envolve questões estéticas, o faz com maior facilidade',
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
              'Na adolescência, é comum a ocorrência de alguns problemas como Bulimia (distúrbio de alimentação que envolve comer desenfreadamente e depois induzir o vômito para controle do peso) que pode levar à erosão dentária e cárie na face lingual dos dentes anteriores, bem como o uso de piercing, que pode causar complicações de ordem inflamatória e até infecciosa. Nestes casos, havendo a suspeita/detecção de outros problemas como a obesidade, gravidez, depressão e doenças respiratórias, entre outras, deve haver notificação e encaminhamento para a equipe.',
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
              'Aproximação da vida adulta',
              maxLines: 10,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                'img/1721.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Deve-se assegurar informações sobre os riscos com acidentes e traumatismos dentários e a necessidade de uso de proteção e adoção de comportamentos seguros.',
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
              'Entre os 17 e 21 anos há, geralmente, erupção dos terceiros molares, na maioria das vezes em local de difícil acesso, o que exige cuidado especial na sua escovação. Nesta fase a maioria dos dentes permanentes de maior risco à cárie já estão erupcionados. A equipe de saúde deve dar continuidade ao trabalho que vinha sendo desenvolvido com as crianças e consolidar nesta faixa etária a idéia do autocuidado e da importânciada saúde bucal',
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
              'Com a aproximação da idade adulta, cresce o risco às doenças periodontais e também ocorre a redução do risco biológico à cárie. Observa-se alta incidência de gengivites e pode ocorrer uma doença, de baixa prevalência, não exclusiva, mas própria desta faixa etária, a periodontite juvenil localizada ou generalizada, cujas características principais são:',
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
              'Quantidade de placa bacteriana não compatível à severa destruição periodontal, progressão rápida e aspecto periodontal saudável.',
              maxLines: 40,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                'img/dentista.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'A visita periódica à unidade de saúde para diagnóstico precoce da doença se constitui na melhor forma de prevenção. Os resultados alcançados com o tratamento, em geral, são satisfatórios. Avaliação médica pode determinar se há presença de doença sistêmica, principalmente nos casos em que não houver resposta para a terapêutica clássica.',
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
              'É importante usar linguagem adequada, de fácil compreensão, não tratando o adolescente como criança, abordando conceitos de si próprios, de estética e de aceitação do seu grupo como fortes motivadores nesta fase da vida',
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
              'Promoção da Alimentação Saudável',
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
                'img/abacaxi.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'A adolescência é o período de transição entre a infância e a fase adulta, que ocorre entre 10 e 20 anos de idade, caracterizada por transformações que influenciam inclusive o comportamento alimentar. Promover alimentação adequada do adolescente é considerar suas características e sua individualidade, conciliando o prazer e a aceitação grupal com os princípios da alimentação saudável e a prática regular de atividade física',
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
              'A dieta rica em carboidrato, com grande freqüência de ingestão e associada à escovação deficiente, é fator predisponente à cárie dentária. Orientar para uma dieta menos cariogênica. Alertar para o fato de que o consumo excessivo de refrigerantes pode ocasionar erosão dentária (desgaste dos dentes, provocado por substancia ácidas).',
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
              'A alimentação saudável segue os mesmos princípios da alimentação para a família, incluindo todos os grupos de alimentos e fornecendo os nutrientes adequados ao crescimento e às modificações corporais que ocorrem nesse período. Existem diferenças marcantes entre os sexos, que afetam as necessidades de energia e nutrientes.',
              maxLines: 40,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                'img/vegetais.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Alguns nutrientes merecem atenção especial: em função do aumento da massa óssea, as necessidades de cálcio estão elevadas; já o rápido crescimento muscular e o aumento do volume sangüíneo necessitam de uma maior quantidade de ferro.',
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
              'Deve também ser dada atenção ao uso de anabolizantes e aos transtornos alimentares, que podem ocorrer nessa fase e que precisam ser adequadamente tratados, como a bulimia e a anorexia nervosa',
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
              'Higiene bucal',
              maxLines: 10,
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
                'img/escova.png',
                scale: 3.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'estimular a escovação e o uso de fio dental. Comentários sobre como o cuidado da saúde bucal torna o sorriso mais bonito e o hálito mais agradável podem estimular o autocuidado. Escutar o adolescente/jovem sempre antes de trabalhar os conceitos e a introdução de novos hábitos, conduzindo a conversa para temas de seu interesse.',
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
              'As gengivas sangrando fazem com que muitas vezes o adolescente não escove a área que apresenta problemas. Orientar que, quanto mais escovar e passar fio dental na área afetada, mais rápido as condições da região poderão melhorar.',
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
              'Fumo e álcool',
              maxLines: 10,
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
                'img/bebidas.png',
                scale: 3.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'A adolescência é uma época de experimentação. É importante trabalhar com essa faixa etária o risco desses hábitos para a saúde geral, além de poderem causar mau hálito, câncer bucal, mancha nos dentes ou doença periodontal.',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ilustrações: https://www.instagram.com/gio.gio1998/',
                    maxLines: 40,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ilustrações:      https://pixabay.com/pt/illustrations/',
                    maxLines: 40,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
