import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
  optionalParameter();
  defaultParameter(name:"thanh", age: 24);
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return Container();
  }
}

void optionalParameter(@required String email, {String name, int age}){
  print(email);
  print(name);
  print(age);
}
void potionalParameter([@required String email, String name, int age]){
  print(email);
  print(name);
  print(age);
}
void defaultParameter({String email="thanh thanh", String name, int age}){
  print(email);
  print(name);
  print(age);
}
void lambdaFunction() => print("123");