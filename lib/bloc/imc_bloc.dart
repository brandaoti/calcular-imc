
import 'package:flutter/material.dart';

class ImcBloc {
  TextEditingController weightController = new TextEditingController();
  TextEditingController heightController = new TextEditingController();

  String result = "Bora la!!!";
  String info = "Informe os dados!";

  void calculate() {
    double _weight = double.parse(weightController.text);
    double _height = double.parse(heightController.text) / 100;
    double imc = _weight / (_height * _height);

    if (imc < 18.5) {
      result = "Abaixo do peso!";
    } else if (imc < 24.9) {
      result = "Peso NORMAL!";
    } else if (imc < 29.9) {
      result = "Sobrepeso!";
    } else if (imc < 34.9) {
      result = "Obesidade GRAU I!";
    } else if (imc < 39.9) {
      result = "Obesidade GRAU II!";
    } else {
      result = "Obesidade GRAU III!";
    }
  }
}
