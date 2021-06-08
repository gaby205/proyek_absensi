import 'package:flutter/material.dart';
import 'package:tgs3_flutter/userdataAPI.dart';

class JPelayanan extends StatefulWidget {
  const JPelayanan({Key? key}) : super(key: key);

  @override
  _JPelayananState createState() => _JPelayananState();
}

class _JPelayananState extends State<JPelayanan> {
  TextEditingController controller = TextEditingController();
  dataAPI? user = null;
  void getAPI() {
    dataAPI.connectToAPI().then((hasil) {
      user = hasil;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.lime.shade200, Colors.yellow.shade200])),
            child: Center(
              child: Column(children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/daftar');
                  },
                  label: Text('Daftar Pelayanan'),
                  icon: Icon(Icons.app_registration),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green[400], onPrimary: Colors.white),
                ),
                Row(
                  children: <Widget>[
                    TextField(
                        decoration: InputDecoration(
                            labelText: "Search", hintText: "Search"),
                        controller: controller),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text('LOGIN'),
                      icon: Icon(Icons.login_rounded),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green[400], onPrimary: Colors.white),
                    )
                  ],
                ),
                
                // Table(
                //   border: TableBorder.all(),
                //   columnWidths: const <int, TableColumnWidth>{
                //     0: IntrinsicColumnWidth(),
                //     1: FlexColumnWidth(),
                //     2: FixedColumnWidth(64),
                //   },
                // )
              ]),
            )));
  }
}
