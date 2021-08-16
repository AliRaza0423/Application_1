import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page14.dart';
import 'package:task_1/page41.dart';
import 'package:task_1/page43.dart';

class Page44 extends StatelessWidget {
  final orange = Colors.orange[400];
  final green = Colors.green[400];
  final red = Colors.red[400];
  final white = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Performance'),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Center(
              child: Text(
                'Learning',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            //------------------reised progress bar from page14----------------
            Progressbar1('On Job Learing', orange, orange),
            Progressbar1('Functional', green, green),
            Progressbar1('Softskills', white, red),
            SizedBox(height: 90),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                child: Text('Close'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                onPressed: () {
                  // print('pressed');
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page41()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
