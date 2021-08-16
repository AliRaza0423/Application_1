import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page14.dart';
import 'package:task_1/page44.dart';

class Page43 extends StatelessWidget {
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
            //-----------------reused progress bar from page14----------------------
            Progressbar1('On Job Learing', orange, orange),
            Progressbar1('Functional', green, green),
            Progressbar1('Softskills', red, red),
            SizedBox(height: 90),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                onPressed: () {
                  print('pressed');
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page44()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}