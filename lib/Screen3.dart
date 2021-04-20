import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  void initState() {
    print("initState3");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies3");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Screen3 oldWidget) {
    print("didUpdateWidget3");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("build3");
    return Container();
  }

  @override
  void deactivate() {
    print("deActive3");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose3");
    super.dispose();
  }
}
