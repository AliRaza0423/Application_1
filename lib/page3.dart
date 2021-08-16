import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_1/appbar.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Check In'),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        children: [

//.......................Linear Progress Bar ...............................

          Container(
            padding: EdgeInsets.all(15),
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            // color: Colors.yellow,
            child: LinearBar('All Checkin Detail')
          ),

//.........................Cards.........................................

          MinicardP3('Late'),
          MinicardP3('On Time'),
          MinicardP3('Late'),
          MinicardP3('On Time'),
        ],
      ),
    );
  }
}

//..............................Linear Bar class................................

class LinearBar extends StatelessWidget {
  LinearBar(this.title);
  String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

//.....................Text above Linear bar................................. 

        Positioned(
            left: 0,
            top: 20,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.red[800], fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Absents',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('On Time',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Late', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('12',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    Text('10',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold)),
                    Text('2',
                        style: TextStyle(
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            )
          ),

//----------------------------Bar----------------------------------//
        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.2,
            backgroundColor: Colors.grey[200],
            progressColor: Colors.blue[300],
          ),
        ),
        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.9,
            backgroundColor: Colors.transparent,
            progressColor: Colors.red[700],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.7,
            backgroundColor: Colors.transparent,
            progressColor: Colors.green[400],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: LinearPercentIndicator(
            // width: 300,
            width: MediaQuery.of(context).size.width *0.7,
            lineHeight: 12,
            percent: 0.2,
            backgroundColor: Colors.transparent,
            progressColor: Colors.blue[300],
          ),
        ),
      ],
    );
  }
}

//................................Minicard Class.................................

class MinicardP3 extends StatelessWidget {
  MinicardP3(this.status);
  String status;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '02-05-2021 Thu',
                  style: TextStyle(
                      color: Colors.red[800], fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 90),
                Container(
                    height: 36,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: status == 'Late'
                          ? Color(0xffF8E7E9)
                          : Color(0xffD6FBE0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        status,
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Checkin 09:25       Checkout:06:00pm'),
            SizedBox(
              height: 8,
            ),
            Text('Total Working Hours: 8hrs 20min')
          ],
        ));
  }
}
