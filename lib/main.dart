import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              number++;
            });
          },
        ),
        body: Inherited(
          child: const MyText(),
          data: number,
        ),
      ),
    );
  }
}

class Inherited extends InheritedWidget {
  final int data;
  const Inherited({
    this.data,
    Key key,
    @required Widget child,
  })
      : assert(child != null),
        super(key: key, child: child);

  static Inherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Inherited>();
  }

  @override
  bool updateShouldNotify(Inherited old) {
    return true;
  }
}
class MyText extends StatefulWidget {

  @override
  _MyTextState createState() => _MyTextState();

  const MyText();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('${Inherited.of(context).data}'),
      ),
    );
  }
}




