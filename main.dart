import 'package:flutter/material.dart';

main(){
runApp(AtThais());
}

class AtThais extends StatefulWidget{ 

@override
State<AtThais> createState() => _AtThaisState();

}
class _AtThaisState extends State<AtThais> {



var contad = 0;

final pergunt = [
"Sua loja favorita?",  
"Sua música favorita?",
"Sua festa da região favorita?", 
"Sua marca de roupa favorita?" 
];

void clicou() {
//contad ++;
setState((){                 
contad: contad++;

});
print(contad);
}

Widget build(BuildContext context){
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text("meu primeiro aplicativo em flutter"),
),
body: Column(
children:  [
Text(perguntas[contad]),
ElevatedButton(
onPressed: clicou,
child: Text('Clique aqui')
),  //ElevatedButton(


ElevatedButton(
onPressed: () {
print("funcao 2");
},
child: Text('clique neste local') 
), 
ElevatedButton(
onPressed : () => print("Função arrow"),
child: Text('clique aqui neste local')
),
],
),
),
);
}
}
