import 'package:app4/pages/paginauno.dart';
import 'package:app4/pages/statefullpage.dart';
import 'package:app4/pages/statelessPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('APRENDIENDO CON DRAWER'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Ir a Pagina 1'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => PaginaUno()));
              },
            ),
            ListTile(
              title: Text('Ir a Practica StatelessWidget'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Clase1()));
              },
            ),
            ListTile(
              title: Text('Ir a Practica StatefullWidget'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MistateFull()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Intercambio entre paginas"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: Text("Ir a Pagina 1"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => PaginaUno()));
                  },
                ),
                FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: Text("Ir a Practica StatelessWidget"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Clase1()));
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: Text("Ir a Practica StatefullWidget"),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => MistateFull()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
