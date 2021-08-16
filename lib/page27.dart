import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page28.dart';

class Page27 extends StatelessWidget {
  String requestA = 'Request For Laptop';

  String content =
      'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Team Request'),
      body: Center(
        child: ListView(
          //-------------------Main body------------------------------------------
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            //----------------------Filter button-------------------------------
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
            //--------------------------------cards---------------------------------
            MiniCardRequest1(
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
    );
  }
}

//---------------------------Classes----------------------------------------------

class MiniCardRequest1 extends StatelessWidget {
  String text1;
  String text2;

  MiniCardRequest1(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
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
            //--------------------1st child-----------
            Container(
              child: Row(
                children: [
                  Container(
                    width: 270,
                    child: Text(
                      text1,
                      style: TextStyle(
                        color: Colors.red[800],
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
                        'View',
                        style: TextStyle(color: Colors.red[800]),
                      ))
                ],
              ),
            ),
            //-------------------2nd child-------------------
            Text(
              'Name Here',
              style: TextStyle(color: Colors.red[800]),
            ),
            //------------------------3rd child------------------
            SizedBox(height: 20),
            Text(
              text2,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            //------------------------4th child--------------------
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
            //---------------------5th child buttons---------------------
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
                  onPressed: () {},
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
      ),
    );
  }
}
