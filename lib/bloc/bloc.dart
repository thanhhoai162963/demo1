import 'dart:async';

class Bloc {
  List<String> data = [
    'Android',
    'Flutter',
    'Java',
    'Dart'
  ];
  StreamController<List<String>> streamController = StreamController<List<String>>();
  search(String event){
    if (event.isEmpty){
       streamController.sink.add(data);
       return;
    }
    filter(event).then((value) => streamController.sink.add(value));
  }
  Future<List<String>> filter(String event){
    final c = Completer<List<String>>();
    List<String> result = [];
    data.forEach((element) {
      if(element.contains(event)){
        result.add(element);
      }
    });
    c.complete(result);
    return c.future;
  }
  dispose(){
    streamController.close();
  }
}