import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HalamanAwal(),
    );
  }
}

class HalamanAwal extends StatefulWidget {
  HalamanAwal({Key key}) : super(key: key);

  @override
  HalamanAwalState createState() => HalamanAwalState();
}

class HalamanAwalState extends State<HalamanAwal> {

  List<Widget> _loop() {
    List<Widget> list = [
    ];

    for(int i = 0; i <= 10; i++){
      print(i);
      list.add(
      Container(
        height: 150,
        child: Text('Text-$i'),
      )
    );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Awal"),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home_rounded),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.grey,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: _loop()
        )
      ),
    );
  }
}
