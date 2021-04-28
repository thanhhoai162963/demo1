import 'package:flutter/material.dart';
import 'package:flutter_app_bai_1/bloc/bloc.dart';
import 'package:provider/provider.dart';
class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {

    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    var providerBloc =Provider.of<Bloc>(context);
    _textEditingController.addListener(() {
      providerBloc.search(_textEditingController.text);
    });
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Bloc>(
      builder: (context,data,child) {
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
    );
  }
}
