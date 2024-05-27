import 'package:flutter/material.dart';
import 'TelaDestino.dart';
import 'dart:async';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionIndex = 0;
  int lastIndex = 0;
  int scorePearl = 0, scoreGarnet = 0, scoreAmet = 0, scoreSteven = 0;
  int _seconds = 30;
  Timer? _timer;

  TextStyle textStyle = const TextStyle(
      color: Color.fromRGBO(251, 250, 255, 1.0), fontFamily: 'Hiruko');
  Color cinzaClaro = const Color.fromRGBO(89, 89, 89, 1.0);
  Color branco = const Color.fromRGBO(251, 250, 255, 1.0);
  Color corTitulo = const Color(0xff313131);

  @override
  void initState() {
    super.initState();
    // Iniciar o timer quando o widget é criado

    startTimer();
  }

  @override
  void dispose() {
    // Certifique-se de cancelar o timer quando o widget é descartado
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    // Criar um timer que executa a cada segundo
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds == 0) {
          if (questionIndex == questions.length - 1) {
            //dispose();
            //_timer?.cancel();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TelaResultado(scoreAmet, scoreGarnet,
                        scorePearl, scoreSteven, resetQuiz)));
          }

          if (questionIndex < questions.length - 1) {
            questionIndex++;
            _seconds = 31;
          }
        }

        _seconds--;
      });
    });
  }

  //fazer de forma dinamica por meio de um método que insira no fim da lista
  //o novo nó com novos parâmetros quando um determinado btn for pressed

  //lista estática das perguntas do quiz
  List<Question> questions = [
    Question(
        'Onde você ficaria se estivesse em uma festa?',
        [
          'No canto, com poucas pessoas por perto',
          'No centro, com muitas pessoas por perto',
          'Circulando, conversando com outras pessoas',
          'No centro, com poucas pessoas por perto'
        ],
        'lib/assets/images/festa.png'),
    Question(
        'Em uma partida esportiva, você:',
        [
          'Analisa o jogo de forma analítica',
          'Ataca o torcedor rival',
          'Torce fielmente pela vitória do seu time',
          'Apenas assiste'
        ],
        'lib/assets/images/esporte.png'),
    Question(
        'Qual a sua estação do ano favorita?',
        ['Inverno', 'Primavera', 'Verão', 'Outono'],
        'lib/assets/images/neve.png'),
    Question(
        'Você prefere:',
        [
          'Ficar em casa sozinho(a)',
          'Sair com amigos(as)',
          'Ficar em casa com amigos(as)',
          'Sair sozinho(a)'
        ],
        'lib/assets/images/amigos.png'),
    Question(
        'Você se define mais como uma pessoa:',
        ['Perfeccionista', 'Criativa', 'Empatica', 'Centrada'],
        'lib/assets/images/define.png'),
    Question(
        'Por qual motivo vale a pena lutar:',
        [
          'Por seus ideais',
          'Por sua nação',
          'Por seu futuro',
          'Por sua liberdade'
        ],
        'lib/assets/images/lutar.png'),
    Question(
        'Em uma trilha você seria:',
        ['O precavido', 'O engraçado', 'O otimista', 'O líder'],
        'lib/assets/images/trilha.png'),
    Question(
        'Qual diamante você seria?',
        [
          'Diamante Branco',
          'Diamante Amarelo',
          'Diamante Rosa',
          'Diamante Azul'
        ],
        'lib/assets/images/diamantes.png'),
    Question(
        'Quais estilos musicais se encaixam na sua playlist?',
        [
          'Clássica, Jazz, Indie e Alternativa.',
          'Rock, Punk, Hip-Hop e Pop',
          'Sou eclético!',
          'Funk, Soul, R&B, e Eletrônica'
        ],
        'lib/assets/images/fusao.gif'),
    Question(
        'Qual o seu maior defeito?',
        [
          'Perfeccionismo e necessidade de controle',
          'Baixa Autoestima',
          'Tendência a se sacrificar em excesso',
          'Sou excessivamente  reservada(o)'
        ],
        'lib/assets/images/sentimento.png'),
    Question(
        'Qual arma você escolheria para uma luta?',
        ['Lança', 'Chicote', 'Escudo', 'Luvas grandes e pesadas'],
        'lib/assets/images/armas.gif'),
    Question(
        'Em um lanche da tarde você prefere:',
        [
          'Alimentos saudáveis e frescos',
          'Qualquer coisa!',
          'Doces ou alguma outra besteira',
          'Não costumo fazer lanche da tarde'
        ],
        'lib/assets/images/comida.gif')
  ];

  //List<BtnAnswers> answersList = [BtnAnswers(1, 'testando', Colors.orange)];

  //verificação de resposta
  void checkAnswer(int userAnswer) {
    setState(() {
      switch (userAnswer) {
        case 1: //perola
          scorePearl++;
          break;
        case 2: //ametista
          scoreAmet++;
          break;
        case 3:
          scoreSteven++;
          break;
        case 4:
          scoreGarnet++;
        default:
      }

      if (questionIndex == questions.length - 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TelaResultado(scoreAmet, scoreGarnet,
                    scorePearl, scoreSteven, resetQuiz)));
      }

      if (questionIndex < questions.length - 1 || _seconds == 0) {
        questionIndex++;
        _seconds = 30;
      }
    });
  }

  //reseta quiz
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      scorePearl = 0;
      scoreGarnet = 0;
      scoreAmet = 0;
      scoreSteven = 0;
      _seconds = 30;
      //startTimer();
    });
  }

  //criador de botão de opção
  Widget btnOption(int answer, String text, Color cor) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            checkAnswer(answer);
          },
          child:
              Text(text, style: TextStyle(color: branco, fontFamily: 'Hiruko')),
          style: ElevatedButton.styleFrom(
            backgroundColor: cor,
            maximumSize: Size(300, 60),
            minimumSize: Size(300, 50),
          ),
        ));
  }

  //Lista de botões para resposta das perguntas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //CCONTAINER GERAL
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/images/frente.png'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //CARD DA QUESTÃO
                  Center(
                      //CONTAINER DE CONFIGURAÇÃO DO CARD
                      child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(18.0),
                          height: 550,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(251, 250, 255, 1.0),
                          ),

                          //
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 160,
                                  //color: Colors.orange,
                                  alignment: Alignment.topCenter,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              questions[questionIndex].imagem),
                                          fit: BoxFit.cover)),
                                  //NÚMERO DA QUESTÃO

                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Colors.blue),
                                          child: Text(
                                            '${questionIndex + 1}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Hiruko',
                                                fontSize: 20),
                                          ),
                                        ),

                                        //TIMER
                                        Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              //color: Colors.pinkAccent
                                            ),
                                            width: 40,
                                            height: 40,
                                            //alignment: Alignment.center,
                                            child: Stack(
                                                //alignment: Alignment.center,
                                                fit: StackFit.expand,
                                                children: [
                                                  CircularProgressIndicator(
                                                    value: _seconds / 30,
                                                    strokeWidth: 5,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      '$_seconds',
                                                      style: TextStyle(
                                                          color: Colors.yellow,
                                                          fontFamily: 'Hiruko',
                                                          fontSize: 20.0),
                                                    ),
                                                  ),
                                                ]))
                                      ]),
                                ),
                                //TÍTULO DA QUESTÃO
                                Container(
                                  //color: Colors.green,
                                  alignment: Alignment.center,
                                  height: 100,
                                  child: Text(
                                      questions[questionIndex].questiontext,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: corTitulo,
                                          fontFamily: 'Hiruko',
                                          fontSize: 20.0)),
                                ),
                                //TÍTULO DA QUESTÃO/>

                                //OBS: fazer os botões mudarem a depender da pergunta em questão (lista dentro de lista?)
                                //BOTÕES
                                Container(
                                  //color: Colors.pinkAccent,
                                  height: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      btnOption(
                                          1,
                                          questions[questionIndex]
                                              .answertext[0],
                                          Color.fromRGBO(83, 161, 243, 1.0)),
                                      btnOption(
                                          2,
                                          questions[questionIndex]
                                              .answertext[1],
                                          Color.fromRGBO(109, 134, 251, 1.0)),
                                      btnOption(
                                          3,
                                          questions[questionIndex]
                                              .answertext[2],
                                          Color.fromRGBO(145, 97, 253, 1.0)),
                                      btnOption(
                                          4,
                                          questions[questionIndex]
                                              .answertext[3],
                                          Color.fromRGBO(181, 66, 253, 1.0))
                                    ],
                                  ),
                                )
                                //BOTÕES/>
                              ]))),
                  //ÁREA DA QUESTÃO/>
                ],
              ),
            )));
  }
}

//usar um evento do botão que toda vez q for clicado adicionar uma questão na lista
class Question {
  final String questiontext;

  final List<String> answertext;
  final String imagem;

  Question(this.questiontext, this.answertext, this.imagem);
}

/*
                Expanded(
                  flex: 3,
                  child: Image.network(
                    'https://www.trending.nl/wp-content/uploads/2021/08/quiz-1920x1509.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              */
