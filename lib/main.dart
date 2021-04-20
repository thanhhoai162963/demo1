import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bai_1/Screen2.dart';

void main() {
  runApp(LifeCycleStatefull());
}

class LifeCycleStatefull extends StatefulWidget {
  @override
  _LifeCycleStatefullState createState() => _LifeCycleStatefullState();
}

class _LifeCycleStatefullState extends State<LifeCycleStatefull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          child: Life(),
        ),
      ),
    );
  }
}

class Life extends StatefulWidget {
  @override
  _LifeState createState() => _LifeState();
}

class _LifeState extends State<Life> {
  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }
  @override
  void didUpdateWidget(covariant Life oldWidget) {
    print("didUpdate");
    super.didUpdateWidget(oldWidget);
  }
  int _number = 0;


  @override
  Widget build(BuildContext context) {
    print("build");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text("Button"),
          onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
            });
          },
        ),
        Text('$_number'),
      ],
    );
  }

  @override
  void deactivate() {
    print("deActive");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose");

    super.dispose();
  }
}





