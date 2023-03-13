import 'package:flutter/material.dart';

// ignore: slash_for_doc_comments
/**
 * Un StatelessWidget se dibuja una vez y no se redibuja
 * Para redibujar un StatelessWidget se debe crear un StatefulWidget
 */

class CounterScreen extends StatefulWidget {
  //Key - sirve para identificar un widget
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() =>
      _CounterScreenState(); //Sirve para crear el estado del widget
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10; // es una propiedad de la clase

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    // int counter = 10; - es una variable local
    //Scaffold - es un widget que nos permite crear una pantalla completa
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          elevation: 10,
        ),
        body: Center(
          child: Column(
            //cuando solo tiene un hijo se puede usar el child
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Todo dentro de un widget debe ser un widget
              //No pueeden ser colores, imagenes, etc
              const Text('Numero de clicks:', style: fontSize),
              Text('$counter', style: fontSize),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: CustonFloatWil(
            increaseFn: increase, decreaseFn: decrease, resetFn: reset));
  }
}

class CustonFloatWil extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustonFloatWil({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
            onPressed: () => increaseFn(),
            child: const Icon(Icons.exposure_plus_1_outlined)),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.exposure_zero_outlined),
        ),
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}
