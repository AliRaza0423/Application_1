import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page27.dart';

import 'page28.dart';

class Page29 extends StatelessWidget {
  String requestA = 'Request For Laptop';

  String content =
      'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Team Request'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
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
                    )),
                  ),
                ],
              ),
              MiniCardRequest3(
                requestA,
                content,
              ),
              MiniCardRequest1(
                requestA,
                content,
              ),
              MiniCardRequest1(
                requestA,
                content,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MiniCardRequest3 extends StatelessWidget {
  String text1;
  String text2;

  MiniCardRequest3(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Container(
                    width: 270,
                    child: Text(
                      text1,
                      style: TextStyle(
                        color: Colors.red[800], //color red
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page28()),
                        );
                      },
                      child: Text(
                        'Edit',
                        style: TextStyle(color: Colors.red[800]),
                      ))
                ],
              ),
            ),
            SizedBox(height: 30.0),
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
            SizedBox(
              height: 30,
            ),
            Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD6FBE0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Approved',
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
