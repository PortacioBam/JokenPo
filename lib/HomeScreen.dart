import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var numeroDosGestos = 0;
  var _frase = "Escolha sua opção";
  var _image = "images/padrao.png";
  var _images = [
    "images/pedra.png",
    "images/papel.png",
    "images/tesoura.png"
  ];

  void _gestoPadrao(){
    setState(() {
      _image = "images/padrao.png";
      _frase = "Escolha sua opção";
    });
  }
  void _selecionarPeca(int numero){

    var numeroAleatorio = Random().nextInt(_images.length);
    setState(() {
      _image  = _images[numeroAleatorio];

      if((numero==0)&&(numeroAleatorio==2)||(numero==1)&&(numeroAleatorio==0)||(numero==2)&&(numeroAleatorio==1)){
        _frase = "Você venceu";
      }else if((numero==0)&&(numeroAleatorio==1)||(numero==1)&&(numeroAleatorio==2)||(numero==2)&&(numeroAleatorio==0)){
        _frase = "Você perdeu";
      }else{
        _frase = "Empate";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(32),
              child: GestureDetector(
                child: Image.asset(_image),
                onTap: (){
                  _gestoPadrao();
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 16, bottom: 10),
              child: Text(_frase, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding: EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/pedra.png", height: 90,),
                    onTap: (){
                      numeroDosGestos = 0;
                      _selecionarPeca(numeroDosGestos);
                    },
                  ),
                  GestureDetector(
                    child: Image.asset("images/papel.png", height: 90,),
                    onTap: (){
                      numeroDosGestos = 1;
                      _selecionarPeca(numeroDosGestos);
                    },
                  ),
                  GestureDetector(
                    child: Image.asset("images/tesoura.png", height: 90,),
                    onTap: (){
                      numeroDosGestos = 2;
                      _selecionarPeca(numeroDosGestos);
                    },
                  )

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
