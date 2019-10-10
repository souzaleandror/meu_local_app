import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List locais = [
    "Beira",
    "Maputo",
    "Curitiba",
    "Rio de Janeiro",
    "Lisboa",
    "Chimoio",
    "Porto",
    "Sao Francisco",
    "Washington"
  ];

  List<Color> cores = [
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.black,
    Colors.grey
  ];

  String randomTexto = "";
  Color randomCore = Colors.blue;

  void _atualizarTela() {
    setState(() {
      _counter++;
      randomTexto = locais[new Random().nextInt(locais.length)];
      randomCore = cores[new Random().nextInt(cores.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: _atualizarTela,
              color: randomCore,
              child: Text("Clique aqui"),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              '$randomTexto',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _atualizarTela,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
