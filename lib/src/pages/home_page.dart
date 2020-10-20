import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 25);
  int counter = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Tabs', style: textStyle),
            Text('$counter', style: textStyle)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
