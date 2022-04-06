import 'package:flutter/material.dart';

class boton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apartado 2'),
        backgroundColor: Colors.pinkAccent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        heroTag: 'principal',
        child: Icon(Icons.keyboard_return),
        onPressed: () {
          Navigator.pop(context);

        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Apartado 2'),
            Text('Da clic en el boton verde para regresar a la página principal'),
          ],
        ),
      ),
    );
  }
}