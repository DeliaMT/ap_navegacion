import 'package:ap_navegacion/boton1.dart';
import 'package:ap_navegacion/boton2.dart';
import 'package:ap_navegacion/boton3.dart';
import 'package:ap_navegacion/botones.dart';
import 'package:ap_navegacion/error.dart';
import 'package:flutter/material.dart';
import 'package:ap_navegacion/error.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => principal(),
        'boton1': (BuildContext context) => boton1(),
        'boton2': (BuildContext context) => boton2(),
        'boton3': (BuildContext context) => boton3(),
        'principal': (BuildContext context) => principal(),
      },
      //onGenerateRoute: (RouteSettings settings) {
       // return MaterialPageRoute(
       //     builder: (BuildContext builder) => error());
     // },
    );
  }
}
class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
        backgroundColor:Colors.purpleAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.more),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (context) {
              return botones();
            },
          );
          Navigator.push(context, ruta);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Página Principal'),
            Text('Da clic en el boton azul'),
          ],
        ),
      ),
    );
  }
}