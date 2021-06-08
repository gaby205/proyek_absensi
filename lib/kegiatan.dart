import 'package:flutter/material.dart';

class Kegiatan extends StatelessWidget {
  const Kegiatan({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center (
      child :Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.lime.shade200, Colors.yellow.shade200])),
        child : Column(children: <Widget>[
          Text("Memunculkan semua kegiatan seperti Ibadah / Event lain"),
        ],)
      
    ),);
  }
}