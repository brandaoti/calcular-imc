import 'package:flutter/material.dart';

class ImcController {
  TextEditingController weightController = new TextEditingController();
  TextEditingController heightController = new TextEditingController();

  GlobalKey<FormState> formKey =
      GlobalKey<FormState>(); // Responsagem pela validação

  String result = "";
  String info = "Informe os dados!";

  // Está validando o form
  bool isValid() {
    return formKey.currentState.validate();
  }

  void refresh() {
    weightController.text = "";
    heightController.text = "";

    result = "";
    info = "Informe os dados!";

    formKey = GlobalKey<FormState>();
  }

  void calculate() {
    double _weight = double.parse(weightController.text);
    double _height = double.parse(heightController.text) / 100;
    double imc = _weight / (_height * _height);

    info = "Verifique o resultado abaixo!";

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
