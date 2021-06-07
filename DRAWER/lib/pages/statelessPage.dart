import 'package:flutter/material.dart';
class Clase1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
        backgroundColor:Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(children: <Widget>[
            Mycard(
              title: Text(
                'AMO FLUTTER',
                 style: TextStyle(color: Colors.grey, fontSize: 30.0 ),
                 ),
              icon: Icon(Icons.favorite,
              size: 40.0,
              color: Colors.red),
            ),
            Mycard(
              title: Text(
                'ME GUSTA FLUTTER',
                style: TextStyle(color: Colors.grey, fontSize: 30.0 ),
                ),
              icon: Icon(Icons.thumb_up,
              size: 40.0,
              color: Colors.blue)
            ),
            Mycard(
              title: Text(
                'SONRIO CON FLUTTER',
                style: TextStyle(color: Colors.grey, fontSize: 30.0 ),
                ),
              icon: Icon(Icons.person_add,
              size: 40.0,
              color: Colors.yellow
              )
            ),
          ],

          ),
          ),
          ),
      );
  }
}

class Mycard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  Mycard({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child:Column(
          children: <Widget> [this.title, this.icon],

      ),
      ),
      );
  }
}