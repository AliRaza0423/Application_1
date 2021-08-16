import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/navigationBar.dart';
import 'page14.dart';
class Page15 extends StatelessWidget {
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
          //----------------Main display---------------------
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
            Progressbar1('On Job Learing',orange,orange),  // Progress bar reused form page14
            Progressbar1('Functional',green,green),       // Progress bar reused form page14
            Progressbar1('Softskills',white,red),        // Progress bar reused form page14
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
                          print('pressed');
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Nav(1)));
                        },
                      ),
            ),
          ],
        ),
        
      ),
    );
  }
}
