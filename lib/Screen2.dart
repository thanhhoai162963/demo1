import 'package:flutter/material.dart';

import 'Screen3.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    print("initState2");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies2");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Screen2 oldWidget) {
    print("didUpdateWidget2");
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    print("build2");
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("man hình 3"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3()));
          },
        ),
      ),
    );
  }
  @override
  void deactivate() {
    print("deActive2");
    super.deactivate();
  }
  @override
  void dispose() {
    print("dispose2");
    super.dispose();
  }
}
