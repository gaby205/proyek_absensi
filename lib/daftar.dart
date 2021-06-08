import 'package:flutter/material.dart';

class Daftar extends StatefulWidget {
  const Daftar({ Key? key }) : super(key: key);

  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.lime.shade200, Colors.yellow.shade200])),
      
    );
  }
}