import 'package:flutter/material.dart';
import 'package:flutter_app_bai_1/bloc/bloc.dart';

class ListContainer extends StatefulWidget {
  Bloc _bloc;
  ListContainer({Bloc bloc}) : _bloc = bloc;

  @override
  _ListContainerState createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<String>>(
      initialData: [],
      stream: widget._bloc.streamController.stream,
      builder: (context, snapshot) {
        return Container(
          child: Expanded(
            child: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                  return Text(snapshot.data[index]);
                }),
          ),
        );
      }
    );
  }
}
