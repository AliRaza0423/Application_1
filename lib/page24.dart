import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page25.dart';

class Page24 extends StatelessWidget {
  String requestA = 'Request For Laptop';
  String requestB = 'Rquest For Hiring';
  String requestC = 'Rquest For Casual Leave';
  String content =
      'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
  String empty = '';
  String aproved = 'Approved';
  String pend = 'Pending';
  String yes = 'Approved';
  String no = 'pe';

// final darkRed = Color(0xffbf2634);
// final lightPink = Color(0xffF8E7E9);
// final lightGreen = Color(0xffD6FBE0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('My Request'),
      body: Center(
        //----------------Main display--------------------------
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              RedCreateButton(),
              MiniCardRequest(requestA, content, pend, no),
              MiniCardRequest(requestB, empty, aproved, yes),
              MiniCardRequest(requestC, content, aproved, yes),
              MiniCardRequest(requestA, content, pend, no),
              MiniCardRequest(requestB, content, aproved, yes),
              MiniCardRequest(requestC, content, aproved, yes),
            ],
          ),
        ),
      ),
    );
  }
}

//--------------------------------Classes--------------------------------------

class RedCreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            OutlinedButton(
              child: Text("+Create Request"),
              style: OutlinedButton.styleFrom(
                  primary: Colors.red[800],
                  backgroundColor: Colors.transparent,
                  onSurface: Colors.orangeAccent,
                  side: BorderSide(color: Colors.red[800], width: 1)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page25()));
              },
            ),
            SizedBox(width: 150),
            GestureDetector(
              onTap: null,
              child: Container(
                  child: Row(
                children: [
                  Text('Filter',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                  SizedBox(width: 2),
                  Icon(Icons.tune),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class MiniCardRequest extends StatelessWidget {
  String text1;
  String text2;
  String status;
  String colorr;

  MiniCardRequest(this.text1, this.text2, this.status, this.colorr);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        //--------------card body--------------------
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //-------------title and status------------------------
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      color: Colors.red[800], //color red
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorr == 'Approved'
                            ? Color(0xffD6FBE0)
                            : Color(0xffF8E7E9),
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
            ),
            SizedBox(height: 30.0),
            //----------------------message--------------------
            Text(
              text2,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 30),
            Text(
              '14:01 20/10/2020',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
