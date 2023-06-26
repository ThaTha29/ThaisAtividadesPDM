import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget{
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
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
      "texto" : "qual a sua cor favorita?",
      "respostas" : ["amarelo","preto", "branco", "azul", "vermelho", "rosa"]
    },
    {
      "texto" : "qual é seu animal favorito?",
      "respostas" : ["cachorro", "gato", "tartaruga", "periquito"]
    },
    {
      "texto" : "qual sua linguagem favorita?",
      "respostas" : ["python", "java", "javaScript"]
    },
    {
      "texto" : "qual sua idade?",
      "respostas" : ["18", "19", "20"]
    },
    {
      "texto" : "qual seu estado?",
      "respostas" : ["SP", "MG", "RJ"]
    },

  ];

  bool get temPergunta{
    return perguntaAtual < perguntas.length;
  }
  

  void acao(){
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  Widget build(BuildContext context){

    List<Widget> respostas = [];
    //primeiro montar esse for
    if(temPergunta){
      for (var resposta in perguntas[perguntaAtual].cast()["respostas"]) {
      print(resposta);
      respostas.add(
          Resposta(resposta, acao)
        );
    }
    }
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta ? Questao(perguntas[perguntaAtual]["texto"].toString()) : Questao("Terminou"),
        ),
        body: temPergunta ? Column(
          children: [
            ...respostas,
          ],
        ) : Text("Resultado"),
      )
    );
  }
}