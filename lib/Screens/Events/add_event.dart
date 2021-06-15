import 'package:flutter/material.dart';

class AddEventPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final title = "Adicionar Evento";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[

          ],
        )
      ),
    );
  }
}
