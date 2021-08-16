import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page14.dart';

class Page13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Performance'),

      body: Center(
        //---------------------- main display-----------------
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Overall Performance',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Meter(),
            SizedBox(
              height: 160,
            ),
            //---------------button--------------------------------
            FractionallySizedBox(
              widthFactor: 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page14()));
                },
                child: Text(
                  'View Detail',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//--------------------------------Classes----------------------------------------
//custom pulgin meter

class Meter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircularPercentIndicator(
        radius: 250,
        lineWidth: 14,
        backgroundColor: Colors.red[100],
        progressColor: Colors.red[800],
        percent: 0.72,
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
        center: Container(
          height: 95,
          width: 95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.red[800],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '72',
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              Text(
                '/100',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
