import 'dart:collection';

import 'package:flutter/material.dart';
import 'mybutton.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String nama = '';
  TextEditingController controller = TextEditingController(text:'NN');
  int data = 0;
  void press1() {
    setState(() {
      this.data = this.data + 1;
    });
  }

  void press2() {
    setState(() {
      this.data = this.data + 3;
    });
  }

  void getData() {
    getNama().then((hsl) {
      controller.text = hsl!;
      setState(() {});
    });

    getDataint().then((hsl){
      this.data = hsl!;
      setState(() {
        
      });
    });
  }

  Future<int?> getDataint() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt('keyData');
  }

  Future<String?> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('keyNama');
  }

  void setData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('keyNama', controller.text);
    pref.setInt('keyData', data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(controller: controller),
              // Text((nama!='') ? nama : 'NN'),
              Text(this.data.toString()),
              MyButton('Button Pertama', pressButton: press1),
              MyButton('Button Kedua', pressButton: press2),
              MyButton('GET DATA', pressButton: getData),
              MyButton('SET DATA', pressButton: setData),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nama = '';
                      controller = TextEditingController(text: 'NN');
                      data = 0;
                    });
                  },
                  child: Text('Clear')),
            ],
          ),
        ),
      ),
    );
  }
}
