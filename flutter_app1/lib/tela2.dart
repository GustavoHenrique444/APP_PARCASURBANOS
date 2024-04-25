import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
 
class tela2 extends StatelessWidget {
  const tela2({super.key});
 
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const  Text(
              "Tudo sobre o Hip-Hop em São Paulo aqui!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

                 actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color:Colors.white,
          ),
        ],
            leading:IconButton(onPressed: () {} , icon:const Icon(
              Icons.person,
              color: Colors.white,
            ),),
          
           centerTitle: true,
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/roxo.jpg'), // colocar img no lab !!!!!!!!!!!
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
       
       
       
    
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ SizedBox(height: 20),
            Container(
              width: 500,
              height: 50,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'História',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 400,
              height: 200,
              color: Colors.grey,
              child: Center(
                child: Text(
                  'O berço do hip hop brasileiro é São Paulo, onde surgiu nos anos 1980, dos encontros na rua 24 de Maio e no Metrô São Bento, de onde saíram muitos artistas reconhecidos como por exemplo Thaíde, DJ Hum, Racionais MC,  Rappin Hood',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '11 de agosto - Dia do Hip-Hop em São Paulo',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 500,
              height: 50,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  'Lugares para Conhecer',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Tartaruga.png', // img no lab !!!!!!!!!!!!
                  width: 300, fit:BoxFit.cover,
                  height: 200,
                ),
                const SizedBox(width: 20),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: const Center( child: Padding(padding: EdgeInsets.all(5),
                    child: Text( 
                      'A obra pintada na empena do edifício santa lúcia na rua líbero badaró no centro, foi realizada com o apoio da prefeitura de são paulo durante a edição 2019/2020 do museu de arte de rua, foi realizada entre dezembro de 2019 a janeiro de 2020',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),),
                  ),
                ),
              ],
              
            ),
          ],
        ),
      ),
      
    );
  }
}