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

class HalamanAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Awal"),
        actions: [
          IconButton(icon: Icon(Icons.home), onPressed: () {},),
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
        child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceAround,
            runSpacing: 16,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.teal,
                child: Center(
                  child: Text("ini text"),
                )
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Text 1"),
                      Text("Text 2"),
                    ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: FlutterLogo(

                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: FlutterLogo(

                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: FlutterLogo(

                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: FlutterLogo(

                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: FlutterLogo(

                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: FlutterLogo(

                ),
              ), Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: FlutterLogo(
                ),
              ),
              // Container(
              //   height: 200,
              //   width: 200,
              //   color: Colors.green,
              //   child: Image.asset('assets/images/gambar1.jpg', fit: BoxFit.cover,),
              // ),
              Container(
                height: 200,
                width: 300,
                child: Card(
                  child: Image.network('https://images.unsplash.com/photo-1600371288342-3a16d67f7e7d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
                ),
              )
            ],
          ),
      ),
    );
  }
}


