import 'package:flutter/material.dart';
import 'package:tgs3_flutter/mybutton.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.lime.shade200, Colors.yellow.shade200])),
        child: Center(
          child :Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/absensi');
            },
            label: Text('Absensi Pelayanan'),
            icon: Icon(Icons.add_task_outlined),
            style: ElevatedButton.styleFrom(
                primary: Colors.green[400], onPrimary: Colors.white),
          ),
          ElevatedButton.icon(
            onPressed: () {
             Navigator.pushReplacementNamed(context, '/pelayanan');
            },
            label: Text('Jadwal Pelayanan'),
            icon: Icon(Icons.schedule_sharp),
            style: ElevatedButton.styleFrom(
                primary: Colors.green[400], onPrimary: Colors.white),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/kegiatan');
            },
            label: Text('Jadwal Kegiatan'),
            icon: Icon(Icons.calendar_today_outlined),
            style: ElevatedButton.styleFrom(
                primary: Colors.green[400], onPrimary: Colors.white),
          ),
        ]),
      ),
    );
  }
}
