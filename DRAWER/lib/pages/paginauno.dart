import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Uno"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Text("BIENVENIDO A LA PAGINA UNO"),
        ),
      ),
    );
  }
}
