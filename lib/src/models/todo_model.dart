import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class Todo{

  Todo({
    loadData() 
  });

  List<dynamic> todo = [];

  Future<List<dynamic>> loadData( int position, String category ) async{

    final resp = await rootBundle.loadString('data/todo.json');

    Map dataMap = json.decode(resp);

    // print(dataMap['categorias'][0]['restaurantes']);

    todo = dataMap['categorias'][position][category.toLowerCase()];

    return todo;

  }
  
}

  final todo = new Todo();