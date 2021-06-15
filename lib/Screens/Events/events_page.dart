import 'package:flutter/material.dart';
import 'add_event.dart';

class EventsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final title = "Eventos";

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddEventPage())
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
