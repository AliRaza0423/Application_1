import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'page24.dart';

class Page10 extends StatelessWidget {
  String requestA = 'Leave Type';
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
      appBar: Appbar('Leave History'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          //-----------------main display----------------
          child: ListView(
            children: [
              //--------------filter Button---------------------
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
              // ------------Cards reused from page 24-------------------
              MiniCardRequest(requestA, content, pend, no),
              MiniCardRequest(requestA, empty, aproved, yes),
              MiniCardRequest(requestA, content, aproved, yes),
              MiniCardRequest(requestA, content, pend, no),
              MiniCardRequest(requestA, content, aproved, yes),
              MiniCardRequest(requestA, content, aproved, yes),
            ],
          ),
        ),
      ),
    );
  }
}
