import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page29.dart';

class Page28 extends StatelessWidget {
  String requestA = 'Request For Laptop';

  String content =
      'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Team Request'),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
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
            MiniCardRequest2(
              requestA,
              content,
            ),
          ],
        ),
      ),
    );
  }
}

class MiniCardRequest2 extends StatelessWidget {
  String text1;
  String text2;

  MiniCardRequest2(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            // padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  width: 250,
                  child: Text(
                    text1,
                    style: TextStyle(
                      color: Colors.red[800], //color red
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/image/bil.jpg'),
            ),
            title: Text('Lee Williamson'),
            subtitle: Text(
              'Designation',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
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
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Reject'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page29()));
                },
                child: Text('Approve'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
