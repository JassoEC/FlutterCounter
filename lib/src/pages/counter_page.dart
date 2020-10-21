import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = TextStyle(fontSize: 25);
  int _counter = 0;

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
              Text('Numero de Tabs', style: _textStyle),
              Text('$_counter', style: _textStyle)
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
              onPressed: _reset, child: Icon(Icons.exposure_zero)),
          FloatingActionButton(onPressed: _dismiss, child: Icon(Icons.remove)),
          FloatingActionButton(onPressed: _add, child: Icon(Icons.add)),
        ]);
  }

  void _add() => setState(() => _counter++);

  void _dismiss() {
    if (_counter > 0) {
      setState(() => _counter--);
    }
  }

  void _reset() => setState(() => _counter = 0);
}
