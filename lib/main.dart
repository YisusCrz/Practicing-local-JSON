import 'package:flutter/material.dart';

import 'package:probando_json/src/pages/home_page.dart';
import 'package:probando_json/src/pages/selected_category_page.dart';
import 'package:probando_json/src/pages/details_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Probando Jsons',
      initialRoute: '/',
      routes: { 
        '/'               : (_) => HomePage(),
        'selectedCategory': (_) => SelectedCategoryPage(),
        'details'         : (_) => DetailsPage(),
      },
    );
  }
}