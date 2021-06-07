import 'package:flutter/material.dart';
import 'package:flutter_schoodule/events.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page'
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(100),
        child: ListView(
          children: <Widget>[
            Container(
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventsPage())
                  );

                },
                child: Text(
                  'Eventos'
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {  

                },
                child: Text(
                  'Disciplinas'
                ),
              ),
            )
          ],
        )
      )
    );
  }
}

