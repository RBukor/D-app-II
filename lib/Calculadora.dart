import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  // Método build (que constrói a estrutura no app)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Calculadora - simples")),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Resultado do cálculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),

            // Campo de texto (input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),

            // Campo de texto (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),

            //Espaçamento depois dos inputs
            new Padding(padding: const EdgeInsets.only(top: 20)),

            // Nova Linha (row)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  //child: new Text("+"),

                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: somar,
                ),

                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: subtrair,

                ),

                new MaterialButton(
                  child: new Text(
                    "×",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: multiplicar,
                ),

                new MaterialButton(
                  child: new Text(
                    "÷",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: dividir,

                ),
              ],
            )
          ],
        ),
      ),
    );
  } // fecha o método build

  // Atributos
  var valor1;
  var valor2;
  var resultado;

  TextEditingController campoValor1 = new TextEditingController(text: "12");
  TextEditingController campoValor2 = new TextEditingController(text: "20");

  // Métodos usados para calcular
  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 + valor2;
    });
  }
  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 - valor2;
    });
  }
  void multiplicar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 * valor2;
    });
  }
  void dividir() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 / valor2;
    });
  }
}