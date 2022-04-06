import 'package:ap_navegacion/botones.dart';
import 'package:flutter/material.dart';

class boton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apartado 1'),
        backgroundColor: Colors.yellowAccent,
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
            Text('Apartado 1'),
            Text('Da clic en el boton verde para regresar a la página principal'),
          ],
        ),
      ),
    );
  }
}