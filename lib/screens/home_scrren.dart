import 'package:flutter/material.dart';

// ignore: slash_for_doc_comments
/**
 * Un StatelessWidget se dibuja una vez y no se redibuja
 * Para redibujar un StatelessWidget se debe crear un StatefulWidget
 */

class HomeScreen extends StatelessWidget {
  //Key - sirve para identificar un widget
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    int counter = 10;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          elevation: 10,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Todo dentro de un widget debe ser un widget
              //No pueeden ser colores, imagenes, etc
              const Text('Numero de clicks:', style: fontSize),
              Text('$counter', style: fontSize),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //onPressed - siempre es requerido
            counter++;
            print('Hola Mundo $counter');
          },
          child: const Icon(Icons.add),
        ));
  }
}
