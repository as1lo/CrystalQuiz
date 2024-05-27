import 'package:flutter/material.dart';
import 'package:quiz/TelaQuiz.dart';

class TelaResultado extends StatelessWidget {
  final int scoreAmet;
  final int scoreGarnet;
  final int scorePearl;
  final int scoreSteven;
  final Function resetQuiz;

  TelaResultado(this.scoreAmet, this.scoreGarnet, this.scorePearl,
      this.scoreSteven, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    Color fontColorPrincipal = const Color.fromRGBO(251, 250, 255, 1.0);
    Color corFontBtn = const Color.fromRGBO(89, 89, 89, 1.0);
    String mensagem = '';
    String frase = '';
    String imagem = '';
    Color grad1 = Colors.black, grad2 = Colors.black, grad3 = Colors.black;

    BoxDecoration fundo(String imagem, Color grad1, Color grad2, Color grad3) {
      return BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment(0.8, 1.5),
              colors: [
                grad1,
                grad2,
                grad3,
              ]),
          image: DecorationImage(image: AssetImage(imagem), fit: BoxFit.cover));
    }

    //AMETISTA
    if (scoreAmet > scoreGarnet &&
        scoreAmet > scorePearl &&
        scoreAmet > scoreSteven) {
      mensagem =
          'Assim como a Ametista você é divertida, espontânea, despreocupada e conhecida por seu espírito livre. Insegurança e impulsividade também caminham ao seu lado.';
      frase = '"Vamos nos divertir!"';
      imagem = 'lib/assets/images/ametista.png';
      grad1 = Color.fromRGBO(173, 130, 197, 1.0);
      grad2 = Color.fromRGBO(183, 154, 200, 1.0);
      grad3 = Color.fromRGBO(228, 216, 236, 1.0);
    }
    //PEROLA
    if (scorePearl > scoreGarnet &&
        scorePearl > scoreAmet &&
        scorePearl > scoreSteven) {
      mensagem =
          'Assim como a Pérola você é inteligente, meticulosa, disciplinada e apresenta um forte senso de responsabilidade mesmo sendo um pouco rígida de vez em quando.';
      frase = '"Nós devemos ser cuidadosos e estratégicos."';
      imagem = 'lib/assets/images/pearl.png';
      grad1 = Color.fromRGBO(68, 127, 151, 1.0);
      grad2 = Color.fromRGBO(74, 140, 174, 1.0);
      grad3 = Color.fromRGBO(80, 169, 221, 1.0);
    }
    //GARNET
    if (scoreGarnet > scorePearl &&
        scoreGarnet > scoreAmet &&
        scoreGarnet > scoreSteven) {
      mensagem =
          'A fusão entre Ruby e Safira! Conhecida por sua força, sabedoria, confiança, calma e presença imponente. Mais reservada do que realmente deveria.';
      imagem = 'lib/assets/images/garnet_ (1).png';
      frase = '"Nós somos fortes juntas."';
      grad1 = Color.fromRGBO(95, 13, 174, 1.0);
      grad2 = Color.fromRGBO(83, 34, 194, 1.0);
      grad3 = Color.fromRGBO(107, 53, 217, 1.0);
    }
    //STEVEN
    if (scoreSteven > scoreGarnet &&
        scoreSteven > scoreAmet &&
        scoreSteven > scorePearl) {
      mensagem =
          'Metade humano e metade Gem! Conhecido por sua bondade, coragem e determinação. Também é gentil e empático, mesmo sofrendo uma pressão esmagadora com o legado de sua mãe.';
      imagem = 'lib/assets/images/steven (1).png';
      frase = '"Vamos resolver isso juntos!"';
      grad1 = Color.fromRGBO(111, 194, 246, 1.0);
      grad2 = Color.fromRGBO(126, 212, 248, 1.0);
      grad3 = Color.fromRGBO(154, 225, 252, 1.0);
    }
    //ALEXANDRITE
    if (scoreSteven < scoreGarnet &&
        scoreGarnet == scoreAmet &&
        scoreAmet == scorePearl) {
      mensagem =
          'Uma personalidade imponenete, bastante complexa e versátil assim como a Alexandrite, Fusão entre Garnet, Ametista e Pérola.';
      imagem = 'lib/assets/images/alexandrite.png';
      frase = '"Nada pode nos parar."';
      grad1 = Color.fromRGBO(64, 8, 53, 1.0);
      grad2 = Color.fromRGBO(102, 16, 77, 1.0);
      grad3 = Color.fromRGBO(128, 9, 75, 1.0);
    }
    //OBISIDIANA
    if (3 == scoreGarnet &&
        3 == scoreAmet &&
        3 == scorePearl &&
        3 == scoreSteven) {
      mensagem =
          'O ápice da fusão entre as Crystal Gems! Imponente, rígida, autêntica, quente, forte e inteligente! Você aparece em momentos importantes e não em momentos de bobeira!';
      imagem = 'lib/assets/images/obsidian.png';
      frase = '"Vamos mostrar a eles o poder da nossa fusão."';
      grad1 = Color.fromRGBO(41, 22, 41, 1.0);
      grad2 = Color.fromRGBO(55, 27, 41, 1.0);
      grad3 = Color.fromRGBO(169, 92, 31, 1.0);
    }
    //DRUSA
    if (0 == scoreGarnet &&
        0 == scoreAmet &&
        0 == scorePearl &&
        0 == scoreSteven) {
      mensagem = 'Você é sem forma e indefinida...';
      imagem = 'lib/assets/images/drusa.png';
      grad1 = Color.fromRGBO(0, 0, 0, 1.0);
      grad2 = Color.fromRGBO(0, 0, 0, 1.0);
      grad3 = Color.fromRGBO(0, 0, 0, 1.0);
    }
    //OPAL
    if (scoreAmet > scoreGarnet &&
        scoreAmet == scorePearl &&
        scoreAmet > scoreSteven) {
      mensagem =
          'Você na maioria das vezes é serena, focada, calma e equilibrada; Apresenta dificuldades em momentos de desconforto ou dúvida. A fusão das melhores partes da Pérola e Ametista.';
      imagem = 'lib/assets/images/opal.png';
      frase = '"...uma Mulher Gigante!"';
      grad1 = Color.fromRGBO(232, 210, 197, 1.0);
      grad2 = Color.fromRGBO(240, 224, 211, 1.0);
      grad3 = Color.fromRGBO(252, 244, 233, 1.0);
    }
    //SARDONIX
    if (scorePearl > scoreAmet &&
        scorePearl == scoreGarnet &&
        scorePearl > scoreSteven) {
      mensagem =
          'A fusão perfeita entre Garnet e Pérola! Carismática, confiante, elegante e muito teatral. As vezes, pode parecer meio arrogante...';
      imagem = 'lib/assets/images/sardonyxx.png';
      frase = '"Vocês estão querendo um bis?"';
      grad1 = Color.fromRGBO(211, 70, 60, 1.0);
      grad2 = Color.fromRGBO(242, 101, 84, 1.0);
      grad3 = Color.fromRGBO(249, 163, 128, 1.0);
    }

    //SUGILITE
    if (scoreAmet > scorePearl &&
        scoreAmet == scoreGarnet &&
        scoreAmet > scoreSteven) {
      mensagem =
          'Extremamente poderosa, agressiva e confiante. Pode ser excessivamente violenta e impulsiva... A incontrolável fusão entre Ametista e Garnet.';
      frase = '"Eu sou a minha identidade!"';
      imagem = 'lib/assets/images/sugilite.png';
      grad1 = Color(0xff9d5fbe);
      grad2 = Color.fromRGBO(183, 154, 200, 1.0);
      grad3 = Color.fromRGBO(228, 216, 236, 1.0);
    }
    //Rainbow Quartz 2.0
    if (scoreSteven > scoreGarnet &&
        scoreSteven == scorePearl &&
        scoreSteven > scoreAmet) {
      mensagem =
          'Otimista, carismática, alegre, descontraída, brincalhona, levemente distraída e possui um senso de humor leve. A fusão entre Steven e Pérola';
      imagem = 'lib/assets/images/rainbow.png';
      frase = '"Vamos transformar isso em algo maravilhoso."';
      grad1 = Color.fromRGBO(202, 124, 233, 1.0);
      grad2 = Color.fromRGBO(145, 160, 245, 1.0);
      grad3 = Color(0xffc6a7ff);
    }
    //QUARTZO FUMÊ
    if (scoreSteven > scoreGarnet &&
        scoreSteven == scoreAmet &&
        scoreSteven > scorePearl) {
      mensagem =
          'Brincalhona, confiante, empática e resiliente. As vezes impulsiva e desorganizada. Uma fusão entre Steven e Ametista!';
      imagem = 'lib/assets/images/fume.png';
      frase = '"Não se preocupe, nós temos isso sob controle."';
      grad1 = Color.fromRGBO(250, 203, 163, 1.0);
      grad2 = Color.fromRGBO(248, 147, 118, 1.0);
      grad3 = Color.fromRGBO(247, 126, 101, 1.0);
    }
    //SUNSTONE
    if (scoreSteven > scoreAmet &&
        scoreSteven == scoreGarnet &&
        scoreSteven > scorePearl) {
      mensagem =
          'Uma fusão entre Garnet e Steven! Confiante, otimista, motivacional e cheia de energia positiva.';
      imagem = 'lib/assets/images/sunstone.png';
      frase = '"Sempre faça o seu melhor."';
      grad1 = Color.fromRGBO(178, 27, 0, 1.0);
      grad2 = Color.fromRGBO(230, 86, 48, 1.0);
      grad3 = Color.fromRGBO(255, 124, 86, 1.0);
    }
    //PERIDOT
    if (scoreGarnet < scoreSteven &&
        scoreSteven == scoreAmet &&
        scoreAmet == scorePearl) {
      mensagem =
          'Curiosa, criativa, analítica, divertida e adaptável. Seria mais uma Peridot para a corte das Diamantes ou aliada para a causa das Crystal Gems?';
      imagem = 'lib/assets/images/peridot.png';
      frase = '"Código número 3-1-2."';
      grad1 = Color.fromRGBO(147, 207, 192, 1.0);
      grad2 = Color.fromRGBO(57, 196, 216, 1.0);
      grad3 = Color.fromRGBO(44, 194, 219, 1.0);
    }
    //lapis lazuli
    if (scoreAmet < scoreSteven &&
        scoreSteven == scoreGarnet &&
        scoreGarnet == scorePearl) {
      mensagem =
          'Sensível, leal, esperançosa, resiliente, forte e confiável. Pode parecer meio rabujenta de vez em quando mas continua sendo uma ótima amiga.';
      imagem = 'lib/assets/images/lapis.png';
      frase = '"A água é um reflexo de como eu me sinto por dentro."';
      grad1 = Color.fromRGBO(15, 9, 47, 1.0);
      grad2 = Color.fromRGBO(21, 26, 82, 1.0);
      grad3 = Color.fromRGBO(49, 50, 102, 1.0);
    }
    //bismuto
    if (scorePearl < scoreSteven &&
        scoreSteven == scoreGarnet &&
        scoreGarnet == scoreAmet) {
      mensagem =
          'Engenhosa, carismática, determinada, resiliente, forte e leal. Pode ser extremamente emotiva e ao mesmo tempo agressiva. É apaixonada por batalhas!';
      imagem = 'lib/assets/images/bismuto.png';
      frase = '"Vamos salvar o dia pois, somos assim!"';
      grad1 = Color.fromRGBO(111, 194, 246, 1.0);
      grad2 = Color.fromRGBO(126, 212, 248, 1.0);
      grad3 = Color.fromRGBO(154, 225, 252, 1.0);
    }

    return Scaffold(
        body: Container(
      decoration: fundo(imagem, grad1, grad2, grad3),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Column(children: [
                  Text(mensagem,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: fontColorPrincipal,
                          fontFamily: 'Hiruko')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(frase,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 18,
                          color: fontColorPrincipal,
                          fontFamily: 'Hiruko')),
                ])),

            //BOTÃO
            ///////////////////////////////
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(300, 50),
                    padding: EdgeInsets.all(3.0)),
                onPressed: () {
                  resetQuiz();
                  Navigator.pop(context);
                },

                //interior do botão
                child: Row(
                  children: [
                    //container para círculo do icone
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.keyboard_return, color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.purple,
                      ),
                    ),

                    //espaçamento entre icone e texto
                    Padding(padding: EdgeInsets.only(left: 10)),

                    Text(
                      'Recomeçar',
                      style: TextStyle(
                          color: corFontBtn,
                          fontFamily: 'Roboto',
                          fontSize: 20),
                    ),
                  ],
                ))
          ],
        ),
      ),
    ) //,
        );
  }
}
