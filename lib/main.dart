  


import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calculadora.dart';

void main() {
  runApp(CalculadoraSimples());
}

class CalculadoraSimples extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora Simples",
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new Calculadora(),
    );
  }
}