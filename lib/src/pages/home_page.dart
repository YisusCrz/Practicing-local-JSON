import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: ListView(  
        children: _listItems( context ),
      )
   );
  }
}


List<Widget> _listItems ( BuildContext context ){

  final firstCategories = ["Restaurantes","Hoteles","Clubs"];

  final List<Widget> categories = [];

  for( int i = 0; i < firstCategories.length; i++ ){
    
    final widTemp = ListTile(
      title: Text(firstCategories[i].toString()),
      leading: Icon(Icons.hotel),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.pushNamed(context, 'selectedCategory', arguments: firstCategories[i].toString());
      },
    );

    categories..add(widTemp)
              ..add( Divider() );

  }

  return categories;

} 