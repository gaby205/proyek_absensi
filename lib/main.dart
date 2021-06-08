import 'package:flutter/material.dart';
import 'mybutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int data = 1;
  void press1(){
    setState(() {
      this.data = this.data + 1;
    });
  }
  void press2(){
    setState(() {
      this.data = this.data + 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("Custom Flutter"),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(this.data.toString()),
          MyButton('Button Pertama',pressButton: press1,),
          MyButton('Button Kedua', pressButton: press2,),
        ],
      ),),),
      
    );
  }
}
