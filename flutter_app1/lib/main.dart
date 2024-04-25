import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app1/tela2.dart';


 
void main() {
  runApp(const MaterialApp (title: "tela inicial",
      home: MainApp(),));
}
 
class MainApp extends StatelessWidget {
  const MainApp({super.key});
 
  @override
    Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
         
          title:const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Arte do Hip-Hop",
                  style: TextStyle(fontSize: 30,  color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,),
                 
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 110),
                child: Text(
                  "em",
                  style: TextStyle(fontSize: 22,  color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 140),
                child: Text(
                  "São Paulo",
                  style: TextStyle(fontSize: 30,  color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,),
 
                ),
              ),
            ],
          ),
 
         centerTitle: true,
         toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pixe.jpg'), //bota img no lab!!!!!!!!!!!!!!!!!
                  fit: BoxFit.cover
              )
          ),
        ),
 
        ),
 
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/paredeti.jpg', //bota img no lab!!!!!!!!!!!!!!!!!
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 150), // SizedBox movido para cima do Container "Parças Urbanos"
                Container(
                  width: 400,
                  height: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(
                      color: Color.fromARGB(255, 199, 199, 199),
                      width: 4,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "PARÇAS URBANOS",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                ),
                SizedBox(height: 100), // SizedBox adicionado aqui
                TextButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tela2(),
                    ),
                  );
                },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Text(
                    'ENTRAR',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                     
                    ),
                  ),
                ),
                SizedBox(height: 60),
                TextButton(
                  onPressed: () {
                    // Lógica do botão
                   
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Text(
                    'MÚSICA',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Precisa de ajuda?",
                        style: TextStyle(fontSize: 18, color: Colors.purple),
                      ),
                    ),
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