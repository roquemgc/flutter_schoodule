import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {  
                  Navigator.pop(
                    context
                  );
                },
                child: Text(
                  'Eventos'
                )
              ),
            )
          ],
        )
      )
    );
  }
}
