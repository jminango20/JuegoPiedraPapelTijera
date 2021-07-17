import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imageApp = AssetImage("imagens/padrao.png");
  var _mensagem = "Escoje la opcion de abajo: ";

  void _opcaoSelecionada(String escolhaUsuario){

    var opcoes = ["pedra", "papel", "tesoura"];
    var numeroAleatorio = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numeroAleatorio];

    //Exibicao da imagem escolhida pelo App
    switch(escolhaApp){
      case "pedra":
        setState(() {
          _imageApp = AssetImage("imagens/pedra.png");
        });
        break;

      case "papel":
        setState(() {
          _imageApp = AssetImage("imagens/papel.png");
        });
        break;

      case "tesoura":
        setState(() {
          _imageApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }

    //Validacao de quem ganhou
    if((escolhaUsuario=="pedra" && escolhaApp=="tesoura") || (escolhaUsuario=="tesoura" && escolhaApp=="papel") || (escolhaUsuario=="papel" && escolhaApp=="pedra")){
      setState(() {
        _mensagem = "Tu ganaste :)";
      });
    }
    else if((escolhaApp=="pedra" && escolhaUsuario=="tesoura") || (escolhaApp=="tesoura" && escolhaUsuario=="papel") || (escolhaApp=="papel" && escolhaUsuario=="pedra")){
      setState(() {
        _mensagem = "Tu perdiste :(";
      });
    }
    else{
      setState(() {
        _mensagem = "Empataron ;|";
      });    }


  }

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
          //2) Imagem App/Gesture Detector
          Image(image: this._imageApp),
          //3) Texto Minha escolha
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                _mensagem,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("papel"),
                child: Image.asset("imagens/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("pedra"),
                child: Image.asset("imagens/pedra.png", height: 100),
              ),
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("tesoura"),
                child: Image.asset("imagens/tesoura.png", height: 100),
              )

              /*Image.asset("imagens/papel.png", height: 100),
              Image.asset("imagens/pedra.png", height: 100),
              Image.asset("imagens/tesoura.png", height: 100),
               */
            ],
          )
        ],
      ),
    );
  }
}
