import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class tela3 extends StatelessWidget {
  const tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Stack(
            children: [
              Image.asset(
                'assets/roxo.jpg', // colocar img no lab!!!
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 16.0,
                right: 16.0,
                child: Text(
                  'Bem-vindo!',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.music_note, size: 30.0, color: Colors.black),
                  SizedBox(width: 10.0),
                  Text(
                    'Tudo sobre o hip-hop em São Paulo aqui',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: Text(
                  'Dia Mundial do Hip-Hop - Sexta-feira, 12 de novembro',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                color: Colors.orange,
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Lugares para conhecer',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                color: Colors.grey,
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Aqui estão alguns lugares para você se aventurar na cidade de São paulo:',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    'BDA - Batalha da Aldeia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                color: Colors.grey,
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Localizada na praça dos estudantes - Barueri a bda é um local onde se reúne diversos tipos de mc para fazer uma batalha de rima.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Image.asset(
                'assets/T1.jpg', // colocar img no lab!!!!!!!!!!!!!!!!!!
                width: 300.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
