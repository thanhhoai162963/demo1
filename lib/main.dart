import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // var streamFuture = Stream<String>.fromFuture(
  //     Future.delayed(Duration(seconds: 3), () => "nguyen hoai thanh"));
  // streamFuture.listen((event) {
  //   print(event);
  // });

  // var streamIterable = Stream<int>.fromIterable(Iterable.generate(100));
  // streamIterable.listen((event) {
  //   print(event);
  // });

  // var streamPeriodic = Stream.periodic(Duration(seconds: 3),(compulationCount)=> 123).asBroadcastStream();
  // streamPeriodic.listen((event) {
  //   print(event.toString());
  // });
  // streamPeriodic.listen((event) {
  //   print(event.toString());
  // }).pause();
  // streamPeriodic.listen((event) {
  //   print(event.toString());
  // }).resume();

  // ignore: close_sinks

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamController<int> _streamController = StreamController<int>();

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }
  Stream<int> streamData(){
    return Stream.fromFuture(Future.delayed(Duration(seconds: 10),()=> 200));
  }
  @override
  void initState() {
    _streamController.sink.add(10);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            child: StreamBuilder(
              stream: _streamController.stream,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return Text(snapshot.data.toString());
              },),
          ),
        ),
      ),
    );
  }
}
