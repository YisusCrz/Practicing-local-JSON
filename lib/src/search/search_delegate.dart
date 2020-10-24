import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      CupertinoButton(
        child: Icon(Icons.clear), 
        onPressed: (){
          query = '';
        }
      )
     ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return CupertinoButton(
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, 
          progress: transitionAnimation
        ), 
        onPressed: () => close( context, null )
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {
      return Container();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
      return Container();
  }

}