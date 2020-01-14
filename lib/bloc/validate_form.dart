import 'package:flutter/material.dart';

class ValidateForm {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Está validando o form
  bool isValid(){
    return formKey.currentState.validate();
  }
}
