import 'package:flutter/material.dart';

void main() {
  runApp(AulaGrupoUm());
}

class AulaGrupoUm extends StatefulWidget {
  @override
  _AulaGrupoUmState createState() => _AulaGrupoUmState();
}

class _AulaGrupoUmState extends State<AulaGrupoUm> {
  String corSelecionada = '';

  void selecionarCor(String cor) {
    setState(() {
      corSelecionada = cor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meu primeiro app!"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () => selecionarCor('azul'),
              child: const Text('TELA AZUL'),
            ),
            ElevatedButton(
              onPressed: () => selecionarCor('verde'),
              child: const Text('TELA VERDE'),
            ),
            ElevatedButton(
              onPressed: () => selecionarCor('preta'),
              child: const Text('TELA PRETA'),
            ),
            Expanded(
              child: Container(
                color: corSelecionada == 'azul'
                    ? Colors.blue
                    : corSelecionada == 'verde'
                        ? Colors.green
                        : corSelecionada == 'preta'
                            ? Colors.black
                            : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
