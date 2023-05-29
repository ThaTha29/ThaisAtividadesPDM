import "package:flutter/material.dart";

import './questao.dart';
import './resposta.dart';

main() {
  runApp(AulaComponentes());
}

void runApp(AulaComponentes aulaComponentes) {
}

class AulaComponentes extends StatefulWidget{
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class State {
}

class StatefulWidget {
}



class _AulaComponentesState extends State<AulaComponentes> {

  var perguntaAtual = 0;
  var cor = Colors.white;

  //aqui é a aula de hoje trocar a lista de strings por uma lista de MAP

  // final perguntas = [
  //   "Qual a sua cor favorita?",
  //   "Qual o seu animal favorito?",
  // ];

  final List<Map<String, Object>> perguntas = [
    {
      "texto" : "Qual a sua cor favorita?",
      "respostas" : ["aMARELO","Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto" : "Qual é seu animal favorito?",
      "respostas" : ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "texto" : "Qual sua linguagem favorita?",
      "respostas" : ["Python", "Java", "JavaScript"]
    },
    {
      "texto" : "Qual sua idade?",
      "respostas" : ["18", "19", "20"]
    },
    {
      "texo": "Qual seu nome?"
      "respostas" : ["maria", "joão"]
    },
    {
      "texto" : "De qual estado você é?",
      "respostas" : ["MG","SP","GO"]
    }

  ];
  
  void acao(){
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  Widget build(BuildContext context){

    List<Widget> respostas = [];
    //primeiro montar esse for
    for (var resposta in perguntas[perguntaAtual].cast()["respostas"]) {
      print(resposta);
      respostas.add(
          Resposta(resposta, acao)
        );
    }
    var column3 = Column(
          children: [
            ...respostas,
          ],
        );
    var column2 = column3;
    var column = column2;
    var appBar2 = AppBar(
          title: Questao(perguntas[perguntaAtual]["texto"].toString()),
        );
    return MaterialApp(
      home: Scaffold(
        appBar: appBar2, //AppBar 
        body: column,
      )
    );
  }
}


