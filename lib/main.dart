import 'package:flutter/material.dart';
import 'dart:convert';

import 'gh_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  AddToCardRequest? request;
  bool x=false;
  void _incrementCounter(){
    x = true;
    Map<String, dynamic> jsosn = {
      "id":"sad",
      "quantity":23,
      "address_id": [
        {
          "id":0
        }
      ],
    };
    request=  AddToCardRequest.fromJson(json.encode(jsosn));
    setState(() {});
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            x?Text(
              request!.id!.toString(),
              style: Theme.of(context).textTheme.headline4,
            ):Container(),
            x?Text(
              request!.quantity!.toString(),
              style: Theme.of(context).textTheme.headline4,
            ):Container(),
            x?Text(
              request!.address_id!.toString(),
              style: Theme.of(context).textTheme.headline4,
            ):Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
