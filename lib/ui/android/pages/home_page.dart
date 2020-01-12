import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Índice de Massa Corpórea"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      backgroundColor: Colors.deepPurple[50], // Cor do fundo
/*
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple[300]),
              child: Text(
                "Testando",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
            ),
          ],
        ),
      ),
*/

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
                labelStyle: TextStyle(color: Colors.indigo),
              ),
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black),
            ),

            SizedBox(
              height: 10.0,
            ),

            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (cm)",
                labelStyle: TextStyle(color: Colors.indigo),
              ),
              textAlign: TextAlign.justify,
              style: TextStyle(color: Color(0xFFCE93D8)),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Preencha os dados!",
                style: TextStyle(color: Colors.purple),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                child: Text(
                  "Verificar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {}, // Chamar a função pra startar o botão
              ),
            ),
          ],
        ),
      ),
    );
  }
}
