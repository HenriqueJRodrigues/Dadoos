import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}


class Dadoos extends StatefulWidget {
  @override

  _DadoosState createState() => _DadoosState();
}
class _DadoosState extends State<Dadoos> {

int numerosDadoosDireita = 1;
int numerosDadoosEsquerda = 1; 

void alteraFaceDadoos(){
  
 numerosDadoosDireita = Random().nextInt(6)+1;
 numerosDadoosEsquerda = Random().nextInt(6)+1;


}

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
         Expanded(
            child: TextButton(
              onPressed: (){ 
                setState(() {
                  alteraFaceDadoos();
                });                
              },
              child: Image.asset(
                  'imagens/dado$numerosDadoosEsquerda.png',
                ),
            ),
            ),
          SizedBox(width: 15,),
          Expanded(
            child: TextButton(
             onPressed: (){ setState(() {
               alteraFaceDadoos();
             });
                
              },
              child: Image.asset(
                  'imagens/dado$numerosDadoosDireita.png',
                ),
            ),
            ),
        ],
      ),
    );
  }
}


