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

  int _index = 0;
  List<String> daftarHalaman = ["Halaman Home","Halaman Profil","Halaman Setting","Halaman Search"];

  setIndex(index){
    setState(() {
      _index = index;
    });
  }

  Widget isiHalaman() {
    if(_index == 0){
      return Center(child: Text(daftarHalaman.elementAt(_index)));
    } else {
     return Text('ini tidak di tengah');
    }
  }

  List<Widget> _loop() {
    List<Widget> list = [
    ];

    for(int i = 0; i <= 10; i++){
      print(i);
      list.add(
      Container(
        height: 150,
        width: 20,
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Text('Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text '),
            ],
          )
        ),
      )
    );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(daftarHalaman.elementAt(_index)),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: setIndex,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Profil",
            icon: Icon(Icons.verified_user),
          ),
          BottomNavigationBarItem(
            label: "Setting",
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home_rounded),
      ),
      body: isiHalaman()
    );
  }
}
