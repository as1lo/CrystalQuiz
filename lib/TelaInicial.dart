import 'package:flutter/material.dart';
import 'TelaQuiz.dart';
import 'CrudQuiz.dart';

class TelaInicial extends StatelessWidget {
  Color corFontTitle = const Color.fromRGBO(251, 250, 255, 1.0);
  Color corFontBtn = const Color.fromRGBO(89, 89, 89, 1.0);
  Color corIcone = Colors.white;

  //Icon icon = Icon(Icons.list, color: Colors.white);

  //função para criar o container do botão
  Widget botaoInicial(BuildContext context, String lblCaption,
      Color colorCircle, Icon icone, Widget rota) {
    return Container(
        //container para margin
        margin: EdgeInsets.only(left: 40, right: 40, bottom: 10),

        //botão
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(300, 50),
                padding: EdgeInsets.all(3.0)),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => rota));
            },

            //interior do botão
            child: Row(
              children: [
                //container para círculo do icone
                Container(
                  padding: EdgeInsets.all(10),
                  child: icone,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: colorCircle,
                  ),
                ),

                //espaçamento entre icone e texto
                Padding(padding: EdgeInsets.only(left: 10)),

                Text(
                  lblCaption,
                  style: TextStyle(
                      color: corFontBtn, fontFamily: 'Hiruko', fontSize: 20),
                ),
              ],
            )));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/images/frente.png'),
                  fit: BoxFit.cover),
            ),

            //posição dos botões e título
            child: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/assets/images/logo.png'))),
                ),
                SizedBox(
                  height: 85,
                ),
                //título
                Container(
                  height: 240,
                  child: Image.asset('lib/assets/images/crystal.png'),
                ),
                //distância
                SizedBox(height: 30),

                //BOTÕES -----------------------

                //botão iniciar
                botaoInicial(
                    context,
                    'Iniciar',
                    Colors.pinkAccent,
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    QuizPage()),
              ]),
            )));
  }
}
