import 'package:flutter/material.dart';

class ConnexionPage extends StatefulWidget {
  @override
  _ConnexionPageState createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Connexion"),
        automaticallyImplyLeading: false,
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
