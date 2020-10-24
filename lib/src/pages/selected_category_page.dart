import 'package:flutter/material.dart';

import 'package:probando_json/src/models/todo_model.dart';
import 'package:probando_json/src/search/search_delegate.dart';


class SelectedCategoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        actions: [
          RawMaterialButton(
            shape: CircleBorder(),
            child: Icon(Icons.search, color: Colors.white,),
            onPressed: (){
              showSearch(
                context: context, 
                delegate: DataSearch());
            }
          )
        ],
      ),
      body: _list( category )
   );
  }
}

Widget _list( String category ){
  return FutureBuilder(
    future: todo.loadData( _wichPosition(category), category ),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      if(snapshot.hasData){
        return ListView(
          children: _localsList( context, snapshot.data ),
        );
      } 

      return Container();
    },
  );
}

List<Widget> _localsList( BuildContext context, List<dynamic> data ){
  
  final List<Widget> widgets = [];

  data.forEach( (opt) {

    final widgTemp = ListTile(
      title: Text(opt['nombre']),
      leading: Icon(Icons.hotel),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.pushNamed(context, 'details', arguments: [opt['nombre'], opt['detalles'], opt['imagenes']]);
      },
    );

    widgets.add(widgTemp);

   });

  return widgets;

}

int _wichPosition( String category ){

  if( category == 'Restaurantes' ){
    return 0;
  } else if ( category == 'Hoteles' ){
    return 1;
  } else if ( category == 'Clubs' ){
    return 2;
  }

  return 0;
}