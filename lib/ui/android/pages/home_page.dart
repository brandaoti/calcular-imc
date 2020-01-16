
import 'package:calcular_imc/bloc/imc_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var imcController = new ImcController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Índice de Massa Corpórea"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      backgroundColor: Colors.deepPurple[50], // Cor do fundo

      body: Container(
        padding: EdgeInsets.only(
          left: 20.0, // Left
          top: 30.0, // Top
          right: 20.0, // Right
          //0.0, // Bottom
        ),
        child: Form(
          key: imcController.formKey,
          //key: _formKey,
          child: ListView(
            children: <Widget>[
              
              Container(// feito pra definir o tamanho do botão para imagem logo
                padding: EdgeInsets.only(right: 100.0, left: 100.0),
                child: FlatButton(
                  child: SizedBox(// Tamanho da imagem
                    width: 64,
                    height: 64,
                    child: Image.asset("assets/imagens/heart.png"),
                  ),
                  color: Colors.deepPurple[50],
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                   onPressed: (){
                     setState(() {
                       imcController.refresh();
                     });
                   }, // Chamar o metodo para resetar
                ),
              ),

              SizedBox(height: 10.0),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Peso (kg)",
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black),
                controller: imcController.weightController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira seu peso!";
                  }
                  return null;
                },
              ),

              SizedBox(height: 10.0),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xFFCE93D8)),
                controller: imcController.heightController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira sua altura";
                  }
                  return null;
                },
              ),

              Padding(
                // Texto para mensagem
                padding: EdgeInsets.all(25.0),
                child: Text(
                  /* Informe os dados! */
                  imcController.info,
                  style: TextStyle(color: Color(0xFFFF0000)),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: 40.0, 
                  right: 40.0,
                  ),
                child: FlatButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Verificar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    if (imcController.isValid()) {
                      setState(() {
                        imcController.calculate(); 
                        // Chamar a função pra startar o botão
                      });
                    }
                  },
                ),
              ),

              Divider(height: 40.0, color: Colors.black45),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: new Text(imcController.result),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
