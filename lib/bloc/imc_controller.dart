import 'package:flutter/material.dart';

class ImcController {
  TextEditingController nameController = new TextEditingController();
  TextEditingController weightController = new TextEditingController();
  TextEditingController heightController = new TextEditingController();

  GlobalKey<FormState> formKey =
      GlobalKey<FormState>(); // Responsagem pela validação

  String result = "";
  String info = "Informe os dados!";
  String info2 = "";

  // Está validando o form
  bool isValid() {
    return formKey.currentState.validate();
  }

  void refresh() {
    nameController.text = "";
    weightController.text = "";
    heightController.text = "";

    result = "";
    info = "Informe os dados!";
    info2 = "";

    formKey = GlobalKey<FormState>();
  }

  void calculate() {
    String _name = nameController.text;

    double _weight = double.parse(weightController.text);
    double _height = double.parse(heightController.text) / 100;
    double _imc = _weight / (_height * _height);

    info = "Verifique o resultado abaixo!";

    info2 = "Informações de $_name \n"; // Info do nome a ser exibida

    result = "Peso: $_weight kg \n";
    result += "Altura: $_height cm \n";
    result += "Índice: ${_imc.toStringAsPrecision(4)} imc \n\n";

    result +=
        "$_name Possui índice de massa igual a ${_imc.toStringAsPrecision(4)}, sendo classificado como: ";

    if (_imc < 18.5) {
      result += "ABAIXO DO PESO!";
    } else if (_imc < 24.9) {
      result += "PESO NORMAL!";
    } else if (_imc < 29.9) {
      result += "SOBREPESO!";
    } else if (_imc < 34.9) {
      result += "OBESIDADE GRAU I!";
    } else if (_imc < 39.9) {
      result += "OBESIDADE GRAU II!";
    } else {
      result += "OBESIDADE GRAU III!";
    }
  }
}
