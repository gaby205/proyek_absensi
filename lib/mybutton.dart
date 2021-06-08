import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  String textButton;
  Icon icon;
  final GestureTapCallback pressButton;
  @override
  _MyButtonState createState() => _MyButtonState(this.textButton,this.icon, pressButton : pressButton);
  MyButton(this.textButton,this.icon,{required this.pressButton});
}

class _MyButtonState extends State<MyButton> {
  String textButton;
  Icon icon;
  final GestureTapCallback pressButton;
  _MyButtonState(this.textButton, this.icon, {required this.pressButton});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ElevatedButton.icon(
          onPressed: pressButton,
          label: Text(textButton),
          icon: icon,
          style: ElevatedButton.styleFrom(
              primary: Colors.green[400], 
              onPrimary: Colors.white),
        )
      ],
    );
  }
}
