import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'page3.dart';

class Page37 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Check In'),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            // color: Colors.yellow,
            child: LinearBar('All Checkin Detail')
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(
                width: 285,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Row(
                    children: [
                      Text('Filter',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                      Icon(Icons.tune),
                    ],
                  )
                ),
              ),
            ],
          ),
          //-------------------reused card form page3-------------------------
          MinicardP3('Late'),
          MinicardP3('On Time'),
          MinicardP3('Late'),
          MinicardP3('On Time'),
        ],
      ),
    );
  }
}