import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              _counter++;
            },
          ),
            body: DemoInherited(
              child: WidgetGet(),
              myData: _counter,
    )));
  }
}

class DemoInherited extends InheritedWidget {
  final int myData;

  DemoInherited({Widget child, this.myData}) : super(child: child);

  static DemoInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DemoInherited>();
  }

  @override
  bool updateShouldNotify(DemoInherited old) {
    return true;
  }
}

class WidgetGet extends StatefulWidget {
  @override
  _WidgetGetState createState() => _WidgetGetState();
}

class _WidgetGetState extends State<WidgetGet> {
  @override
  Widget build(BuildContext context) {
    DemoInherited demo = context.dependOnInheritedWidgetOfExactType();
    return Container(
      child: Text('$demo'),
    );
  }
}
