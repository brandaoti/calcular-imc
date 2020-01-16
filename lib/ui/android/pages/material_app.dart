import 'package:calcular_imc/ui/android/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calcular IMC",
      theme: ThemeData(
        primaryColor: Color(0xFF50256F),
      ),
      home: HomePage(),
    );
  }
}