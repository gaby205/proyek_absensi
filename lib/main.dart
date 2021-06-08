import 'dart:collection';
import 'dart:js';
import 'beranda.dart';
import 'classsAPI.dart';
import 'package:flutter/material.dart';
import 'mybutton.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => Home(),
          '/beranda': (context) => Beranda(),
        }
        );
  }
}

///////////////////////////////// HOME ////////////////////////////////////


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: 
      SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.lime.shade200, Colors.yellow.shade200])),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("GAMBAR LOGO APLIKASI"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    decoration: InputDecoration(
                        labelText: "Username", hintText: "Username"),
                    controller: controller1),
                TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                    controller: controller2),
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                      ElevatedButton.icon(
                        onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()));
                        },
                        label: Text('LOGIN'),
                        icon: Icon(Icons.login_rounded),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[400],
                            onPrimary: Colors.white),
                      )
                    ]),
              ],
            ),
          ),
        ),
      ),
    )
   );
  }
}
///////////////////////////////// END OF HOME ////////////////////////////////////
