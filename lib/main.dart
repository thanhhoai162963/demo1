import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app_bai_1/user.dart';
import 'package:flutter_app_bai_1/user2.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
void main() {
  runApp(MyApp());
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   String title = "";
//   List<User2> list123 = List();
//
//   @override
//   void initState() {
//     _getApi();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // ignore: deprecated_member_use
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: (){
//                   // getArrayApi().then((value) {
//                   //   setState(() {
//                   //    list123 = value;
//                   //   });
//                   // });
//                     _postApi().then((value){
//                       setState(() {
//                         title =value.title;
//                       });
//                     });
//               }, child: Text('Call api')),
//               // Expanded(
//               //   child: ListView.builder(
//               //       itemCount: list123.length,
//               //       itemBuilder: (context,index){
//               //         return Text(list123[index].title);
//               //       }),
//               // )
//               //post
//               Text(title)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<User> getObjectApi() async {
//     final String url = 'https://jsonplaceholder.typicode.com/posts/1';
//     try {
//       var response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         var result = User.fromJson(jsonDecode(response.body));
//         return result;
//       }
//     } catch (e) {
//       throw Exception("lỗi rồi nha");
//     }
//   }
//   Future<List<User2>> getArrayApi() async{
//     final String url = 'https://jsonplaceholder.typicode.com/posts';
//     try{
//       var response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200){
//         var result = jsonDecode(response.body) as List<dynamic>;
//         List<User2> list = result.map((e) => User2.fromJson(e)).toList();
//         return list;
//       }
//     }catch (e){
//       throw Exception('loi r');
//     }
//   }
//    Future<User2>_postApi() async {
//     final String url = 'https://jsonplaceholder.typicode.com/posts';
//       var response = await http.post(Uri.parse(url),body: {
//         'title' : 'thanh',
//         'body' : 'Flutter',
//       });
//       print(response.statusCode);
//       if (response.statusCode == 201 ){
//         var result = User2.fromJson(jsonDecode(response.body)) ;
//         return result;
//       }
//   }
//    _getApi() async {
//     final String url = 'https://jsonplaceholder.typicode.com/posts/1';
//     var response = await http.put(Uri.parse(url),body: <String,dynamic>{
//       'id' : '1',
//       'title' : 'thanh',
//       'body' : 'Nguyen Hoai'
//     });
//     print(response.statusCode);
//   }
// }

//dio
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
