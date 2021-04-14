import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // String
    // String name = "thanh";
    // String name1 = "thanh";
    // if (name.isNotEmpty);
    // if (name  == name1);
    // StringBuffer buffer = StringBuffer();
    // buffer.write("a");
    // buffer.write("a");
    // buffer.write("a");
    // String a = '''
    // asdsadsa
    // asdsadas
    // asdsada
    // ''';
    var age = null;
    age ??= 25;
    if (age is int) {
      age = 26;
    }
    if (age is! String) {
      age = 24;
    }
    bool result = age == 24 ? true : false;
    StringBuffer stringBuffer = StringBuffer()
    ..write("object")
    ..write("object");
    int a =123;
    double c = 44.5;
    double d = a as double;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Text('$stringBuffer',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              color: Colors.pink),
        ),
      ),
    );
  }
}
