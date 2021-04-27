import 'package:flutter/material.dart';
import 'package:flutter_app_bai_1/bloc/bloc.dart';
import 'package:flutter_app_bai_1/bloc/widget_event.dart';
import 'package:flutter_app_bai_1/bloc/widget_state.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Bloc bloc = Bloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SearchBox(bloc: bloc),
              ListContainer(bloc: bloc),
            ],
          ),
        ),
      ),
    );
  }
}

