import 'package:flutter/material.dart';


class DetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<Object> information = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/placeholders/loading.gif', 
                image: information[2],
                fit: BoxFit.fill,
              ),
            ),
            Card(
              elevation: 10,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20) ),
              child: Container(
                padding: EdgeInsets.symmetric( horizontal: 5 ),
                height: 100,
                child: Center(child: Text(information[1])),
              ),
            )
          ],
        ),
     ),
   );
  }
}