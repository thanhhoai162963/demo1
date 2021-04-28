import 'package:flutter/material.dart';
import 'package:flutter_app_bai_1/bloc/bloc.dart';
import 'package:provider/provider.dart';

class ListContainer extends StatefulWidget {
  @override
  _ListContainerState createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Bloc>(
      builder: (context, data, child) => StreamBuilder<List<String>>(
          initialData: [],
          stream: data.streamController.stream,
          builder: (context, snapshot) {
            return Container(
              child: Expanded(
                child: ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Text(snapshot.data[index]);
                    }),
              ),
            );
          }),
    );
  }
}
