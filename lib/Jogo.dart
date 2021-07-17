import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Juego: Piedra, Papel y Tijera",
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //1)Text
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "El App escojio: ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            )
          ),
          //2) Imagem App
          Image.asset("imagens/padrao.png"),
          //3) Texto Minha escolha
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escoje la opcion: ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("imagens/papel.png", height: 100),
              Image.asset("imagens/pedra.png", height: 100),
              Image.asset("imagens/tesoura.png", height: 100),
            ],
          )
        ],
      ),
    );
  }
}
