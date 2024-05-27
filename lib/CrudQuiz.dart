import 'package:flutter/material.dart';
import 'package:quiz/TelaQuiz.dart';

class CrudQuiz extends StatefulWidget {
  @override
  _CrudQuizState createState() => _CrudQuizState();
}

class _CrudQuizState extends State<CrudQuiz> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          decoration: BoxDecoration(color: Colors.amber),
          child: Column(
            children: [
              //ESCOLHA QUANT PERGUNTAS (OBG. 5)
              //List<Question>
              //ESCOLHA QUANT RESPOSTAS POR PERGUNTA (MIN. 2)(MAX. 4)
            ],
          )),
    );
  }
}
