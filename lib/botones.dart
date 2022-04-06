import 'package:flutter/material.dart';
class botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adónde quieres ir?'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Aqui se muestran las posibles rutas')],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            heroTag: 'boton3',
            child: Text('3'),
            onPressed: () {
              Navigator.pushNamed(context, 'boton3');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'boton2',
            child: Text('2'),
            onPressed: () {
              Navigator.pushNamed(context, 'boton2');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'boton1',
            child: Text('1'),
            onPressed: () {
              Navigator.pushNamed(context, 'boton1');
            },
          ),
          SizedBox(
            width: 15,
          ),
          //FloatingActionButton(
           // backgroundColor: Colors.red,
           // heroTag: 'error',
            //child: Text('x'),
            //onPressed: () {
            //  Navigator.pushNamed(context, 'error');
           // },
         // ),
          FloatingActionButton(
            backgroundColor: Colors.lightGreenAccent,
            heroTag: 'principal',
            child: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.pop(context, "principal");
            },
          ),
        ],
      ),
    );
  }
}