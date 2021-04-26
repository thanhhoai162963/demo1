import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'user.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatefulWidget {
  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: DemoValueListenable(),
      ),
    );
  }
}

// class BasicProvider extends StatefulWidget {
//   @override
//   _BasicProviderState createState() => _BasicProviderState();
// }
//
// class _BasicProviderState extends State<BasicProvider> {
//   @override
//   Widget build(BuildContext context) {
//     User user = User()
//       ..name = "nguyen hoai thanh";
//     return Provider.value(value: user,child: DemoWidget());
//   }
// }
//
// class DemoWidget extends StatefulWidget {
//   @override
//   _DemoWidgetState createState() => _DemoWidgetState();
// }
//
// class _DemoWidgetState extends State<DemoWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Consumer123(),
//         WithoutWidget(),
//       ],
//     );
//   }
// }
// class Consumer123 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<User>(
//       builder: (context, data, child){
//         return Text(data.name);
//       },
//     );
//   }
// }
// class WithoutWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     User user = Provider.of<User>(context);
//     return Text(user.name);
//   }
// }
//
class User with ChangeNotifier {
  String _name;
  int _age;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
    notifyListeners();
  }

  User({String name, int age})
      : _name = name,
        _age = age;

  _incrementAge1() {
    age++;
    notifyListeners();
  }
}

class User2 with ChangeNotifier {
  String _name;
  int _age;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  User2({String name, int age})
      : _name = name,
        _age = age;

  _incrementAge2() {
    age++;
    notifyListeners();
  }
}
// class ProviderNotification extends StatefulWidget {
//   @override
//   _ProviderNotificationState createState() => _ProviderNotificationState();
// }
//
// class _ProviderNotificationState extends State<ProviderNotification> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<User>(
//       create: (context) => User(name: "thanh",age: 25),
//       child: Demo1(),
//     );
//   }
// }
//
// class Demo1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<User>(
//       builder: (context, data, child) {
//         return Column(
//           children: [
//             ElevatedButton(onPressed: () {
//               data._incrementAge();
//             }, child: Text("123")),
//             Text(data.age.toString())
//           ],
//         );
//       },
//     );
//   }
// }
//
// class Demo2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     User user = Provider.of(context);
//     return Container(
//
//     );
//   }
// }

// class MutipleProvider123 extends StatefulWidget {
//   @override
//   _MutipleProvider123State createState() => _MutipleProvider123State();
// }
//
// class _MutipleProvider123State extends State<MutipleProvider123> {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider(create: (context) => User(age: 10))
//         // ChangeNotifierProvider(create: (context) => User(age: 10)),
//         // ChangeNotifierProvider(create: (context) => User2(age: 20)),
//       ],
//       child: DemoMultiple(),
//     );
//   }
// }
//
// class DemoMultiple extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     User user = Provider.of<User>(context);
//    // User2 user2 = Provider.of<User2>(context);
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Center(
//           child: ElevatedButton(onPressed: () {
//             user._incrementAge1();
//            // user2._incrementAge2();
//           }, child: Text("123")),
//         ),
//         Text('${user.age}')
//       ],
//     );
//   }
// }

class DemoValueListenable extends StatefulWidget {
  @override
  _DemoValueListenableState createState() => _DemoValueListenableState();
}

class _DemoValueListenableState extends State<DemoValueListenable> {
  @override
  Widget build(BuildContext context) {
    return Provider(create: (context) => Counter(),
      child: Consumer<Counter>(builder: (context, data, child) {
        return ValueListenableProvider<int>.value(value: data._valueNotifier,child: Column(
          children: [
            Consumer<int>(builder: (context,value,child){
              return Text(value.toString());
            })
          ],
        ),);
      },),
    );
  }
}

class Counter {
  final ValueNotifier<int> _valueNotifier = ValueNotifier(10);
}
