import 'package:flutter/material.dart';

class Criancas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criança (02 a 09 anos de idade)'),
      ),
      body: new SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: Image.asset(
                'img/kid3.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'A criança',
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
              'Esta é a faixa etária ideal para desenvolver hábitos saudáveis e para participação em programas educativos/preventivos de saúde bucal. Deve-se evitar a extração precoce dos dentes de leite, pois este procedimento pode alterar o tempo de erupção do dente permanente, podendo provocar má oclusão (mau encaixe mandibular)',
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
              'Em torno dos 05 anos, os incisivos e molares permanentes iniciam sua erupção. Nesta fase,deve-se reforçar a importância da higiene nos dentes permanentes recém-erupcionados.',
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
              'Fatores que predispõem a má oclusão',
              maxLines: 10,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '- Sucção de chupeta: é recomendado que este hábito seja retirado gradualmente, até os três anos. Após esta idade, o hábito de sucção anormal pode trazer problemas de oclusão.',
                    maxLines: 40,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    ' - Sucção digital: a má oclusão oriunda deste hábito depende da forma, freqüência, duração e intensidade do mesmo.',
                    maxLines: 40,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '- Deglutição atípica: rojeção da língua entre os dentes ateriores, tanto durante o repouso quanto no ato da deglutição.',
                    maxLines: 40,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    ' - Hábito de roer unha, respiração bucal e outros',
                    maxLines: 40,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                'img/55033.jpg',
                scale: 5.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'O uso de medidas não traumáticas para a remoção destes hábitos é fundamental, uma vez que envolve questões emocionais. Portanto, devem ser avaliados a melhor forma e o melhor momento para descontinuar o hábito. O trabalho conjunto com psicólogo pode ser necessário para que sejam evitados problemas desta natureza.',
              maxLines: 50,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Reforçar sempre, junto aos pais, responsáveis, professores, cuidadores de creches e membros das equipes de saúde, a importância da escovação como um hábito fundamental na rotina de higiene do corpo. Quanto aos hábitos alimentares, cabe ressaltar que tudo aquilo que os pais e responsáveis fazem (freqüência, tipo de alimentos), geralmente tende a ser referência para os filhos.',
              maxLines: 50,
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
                'img/melan.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'De acordo com a cultura e os hábitos alimentares em cada local, incentivar a introdução de alimentos saudáveis, que favoreçam a mastigação e a limpeza dos dentes. Alertar para o fato de que o consumo exagerado e freqüente do açúcar pode constituir fator de risco para a cárie dentária e outras doenças. Incentivar o consumo de alimentos que contenham açúcar natural (frutas e leite), por serem menos significativos na etiologia da cárie.',
              maxLines: 50,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'A partir dos dois anos de idade, a alimentação da criança torna-se mais parecida com a da família. Acima de dois anos de idade a alimentação deve ser segura, variada, culturalmente aceita e adequada em qualidade. A quantidade de energia e dos diferentes nutrientes é que varia, de acordo com as necessidades nutricionais das pessoas, em cada fase do curso da vida.',
              maxLines: 50,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'fase pré-escolar (2 a 6 anos de idade)',
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
                'img/pre.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Na fase pré-escolar, é importante que a introdução e a oferta de alimentos variados, iniciadas aos seis meses de idade, tenham continuidade. Nessa fase a criança ainda está formando seus hábitos alimentares e ela deve ser estimulada a participar do ato de alimentar-se. O período pré-escolar é um excelente período para introduzir hábitos alimentares saudáveis e ajudar a criança a entender que isso faz parte de um modo de vida saudável.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'fase escolar (7 a 10 anos de idade)',
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
                'img/escola.png',
                scale: 1.5,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Em relação às crianças em fase escolar, a alimentação saudável deve continuar a promover o crescimento e o desenvolvimento físico e intelectual. Como a criança está em fase de socialização mais intensa e se torna mais independente dos pais e da família, é importante assegurar e reforçar a sua responsabilidade na seleção e consumo de alimentos saudáveis.',
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
              'A escovação contínua sendo responsabilidade dos pais ou responsáveis, mas a medida que a criança cresce, deve ser estimulada a fazer a escovação sozinha. Neste período é importante que a criança escove seus dentes e os pais/responsáveis complementem a escovação, na medida em que o desenvolvimento da motricidade se dá ao longo do tempo.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Reforçar a importância de se usar o mínimo possível de dentifrício, pois a ingestão ainda ocorre nessa idade. Na medida do possível, crianças com menos de 06 anos devem fazer uso de dentifrício fluoretado sob supervisão de um adulto ciente dos riscos da ingestão. O dentifrício deve ser colocado sempre em local inacessível às crianças. O uso de fio dental deve ser introduzido com ajuda de um adulto.',
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
                    'Ilustrações: https://br.freepik.com/fotos-vetores-gratis/medico',
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
