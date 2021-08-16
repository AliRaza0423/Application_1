import 'package:flutter/material.dart';
import 'package:task_1/page31.dart';
import 'package:task_1/page32.dart';

class Page30 extends StatelessWidget {
  var nav = new Page32();
  var nav2 = new Page31();

  String text1 = 'My Profile';
  String text2 = 'Team Profile';
  String text3 = 'Settings';
  String pic = 'assets/image/bil.jpg';
  String pic2 = 'assets/image/person.jpg';
  String pic3 = 'assets/image/settings1.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('More'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              MiniCardmore(text1, pic, nav),
              MiniCardmore(text2, pic2, nav2),
              MiniCardmore(text3, pic3, nav),
            ],
          ),
        ),
      ),
    );
  }
}

//----------------------classes---------------------------------------------

class MiniCardmore extends StatelessWidget {
  var next;
  String text;
  String pic;
  MiniCardmore(this.text, this.pic, this.next);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => next));
      },
      child: Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Container(
            width: 400,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(pic),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(width: 200, child: Text(text)),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                ),
              ],
            )),
      )),
    );
  }
}