import 'package:flutter/material.dart';
import 'package:flutter_app_bai_1/bloc/bloc.dart';
class SearchBox extends StatefulWidget {
  final Bloc _bloc;
  SearchBox({Bloc bloc}) : _bloc = bloc;
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    _textEditingController.addListener(() {
      widget._bloc.search(_textEditingController.text);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
          hintText: "Search...",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))
          )
        ),
      ),
    );
  }
}
