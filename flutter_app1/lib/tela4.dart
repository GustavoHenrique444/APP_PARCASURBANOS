import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
 
class tela4 extends StatelessWidget {
  const tela4({super.key});
 
  @override
     Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            Icon(Icons.music_note),
            SizedBox(width: 10),
            Text("Tudo sobre o Hip-Hop em São Paulo aqui!"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquise uma música',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                  filled: true,
                  fillColor: Color.fromARGB(255, 0, 255, 8),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _buildItem('assets/foto1.jpg', 'Texto 1', 'Texto menor 1'), //colocar no lab!!!!!!!!!!!
                  SizedBox(height: 10),
                  _buildItem('assets/foto2.jpg', 'Texto 2', 'Texto menor 2'), //coloca no lab!!!!!!!!
                  SizedBox(height: 10),
                  _buildItem('assets/foto3.jpg', 'Texto 3', 'Texto menor 3'), //coloca no lab!!!!!!!!!!
                  SizedBox(height: 10),
                  _buildItem('assets/foto4.jpg', 'Texto 4', 'Texto menor 4'), //coloca no lab!!!!!!!!!!
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String imagePath, String text, String subText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[400],
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                subText,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}