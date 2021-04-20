import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(OngBa());
}
class OngBa extends StatefulWidget {
  int nameOngBa = 7;
  @override
  _OngBaState createState() => _OngBaState();
}

class _OngBaState extends State<OngBa> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: ChaMe(),
        ),
      ),
    );
  }
}
class ChaMe extends StatelessWidget {
  int chaMe = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConTrai(),
    );
  }
}
class ConTrai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ChaMe chaMe = context.findAncestorWidgetOfExactType();
    OngBa ongBa = context.findAncestorWidgetOfExactType();
    return Column(
      children:[
        Container(color: Colors.red,
        width: 100,
        height: 100,),
        Text('${ongBa.nameOngBa}')
      ]
    );
  }
}


