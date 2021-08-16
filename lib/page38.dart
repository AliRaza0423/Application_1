import 'package:flutter/material.dart';
import 'package:task_1/page34.dart';
import 'package:task_1/page37.dart';
import 'package:task_1/page39.dart';
import 'package:task_1/page40.dart';
import 'package:task_1/page41.dart';
import 'page30.dart';


class Page38 extends StatelessWidget {
  var nav = new Page40();
  var nav2 = new Page37();
  var nav3 = new Page41();
  var nav4 = new Page39();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Member Detail'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //---------------------reused card from bage30---------------------
              MiniCardmore('Member Name', 'assets/image/bil.jpg', nav),
              MiniCardmore('Checkin History', 'assets/image/person.jpg', nav2),
              MiniCardmore(
                  'Performance Hiostory', 'assets/image/person.jpg', nav3),
              MiniCardmore('Request History', 'assets/image/person.jpg', nav4),

            ],
          ),
        ),
      ),
    );
  }
}
