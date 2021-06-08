import 'package:flutter/material.dart';

class Absensi extends StatefulWidget {
  const Absensi({ Key? key }) : super(key: key);

  @override
  _AbsensiState createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.lime.shade200, Colors.yellow.shade200])),
                child: Center(
                  child: 
                  Column(
                    children: <Widget> [
                      Text("Berupa Tabel untuk mengisi absensi, bagi pelayanan persembahan akan didesign berbeda untuk mendata kantong persembahan"),
                    ]
                  )
                ),
      
    );
  }
}