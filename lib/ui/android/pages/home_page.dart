import 'package:calcular_imc/bloc/imc_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();

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
          right: 30.0, // Right
          //0.0, // Bottom
        ),
        child: ListView(
          children: <Widget>[
            //Icon(Icons.person, size: 100.0),
            SizedBox(
              width: 64,
              height: 64,
              child: Image.asset("assets/imagens/heart.png"),
            ),

            SizedBox(
              height: 20.0,
            ),

            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso (kg)",
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              ),
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black),
              controller: bloc.weightController,
            ),

            SizedBox(
              height: 10.0,
            ),

            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (cm)",
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              ),
              textAlign: TextAlign.justify,
              style: TextStyle(color: Color(0xFFCE93D8)),
              controller: bloc.heightController,
            ),

            Padding(
              // Texto para mensagem
              padding: EdgeInsets.all(25.0),
              child: Text(
                /* Informe os dados! */
                bloc.info,
                style: TextStyle(color: Color(0xFFFF0000)),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
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
                  setState(() {
                    bloc.calculate();
                  });
                }, // Chamar a função pra startar o botão
              ),
            ),

            Divider(height: 30.0, color: Colors.black45),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: new Text(bloc.result),
            
            ),
          ],
        ),
      ),
    );
  }
}
