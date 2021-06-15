import 'package:flutter/material.dart';
import 'package:flutter_schoodule/Screens/Events/events_page.dart';

class DashboardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final title = "Dashboard";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {  
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => EventsPage())
                  );
                },
                child: Text(
                  'Eventos'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {  
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => EventsPage())
                  );
                },
                child: Text(
                  'Disciplinas'
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}