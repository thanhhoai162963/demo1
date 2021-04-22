import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureApp(),
    );
  }
}

class FutureApp extends StatefulWidget {
  @override
  _FutureAppState createState() => _FutureAppState();
}

class _FutureAppState extends State<FutureApp> {
  String name, name1;
  @override
  Widget build(BuildContext context) {
    String name = "hoai";
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // FutureBuilder(
            //     future: chuaHoanThanh(),
            //     builder: (context,snapshot){
            //       return Text(snapshot.data.toString());
            //     },
            // )
            ElevatedButton(
                onPressed: () {
                  // chuaHoanThanh();
                  // print(chuaHoanThanh());


                  //  name1 = await hoanThanh();
                  // print(name);
                  // setState(() {
                  //   name = name1;
                  // });

                  hoanThanh().then((value) =>    print(value));

                },
                child: Text(name))
          ],
        ),
      ),
    );
  }
}

Future<void> chuaHoanThanh() {
  return Future.delayed(Duration(seconds: 3), () => print("thanh"));
}

Future<String> hoanThanh() {
  return Future.delayed(Duration(seconds: 3), () => "thanh");
}

