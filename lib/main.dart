import 'package:flutter/material.dart';
import 'package:my_app2/screens/counter_scrren.dart';
import 'package:my_app2/screens/home_scrren.dart';

void main() {
  runApp(const MyApp());
}

// ignore: slash_for_doc_comments
/**
  StatelessWidget los widgets sin estado
  StatefulWidget los widgets con estado
  key - sirve para identificar un widget o saber la referencia de un widget
 */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Como nunca esta cambiando se recomienda usar el const
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
