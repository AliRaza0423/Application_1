import 'package:flutter/material.dart';
import 'package:task_1/page33.dart';
import 'package:task_1/page34.dart';
import 'package:task_1/page35.dart';

class Page32 extends StatelessWidget {
  String text1 = 'Personal Information';
  String text2 = 'Educatoin Information';
  String text3 = 'Experience Information';
  var next = new Page33();
  var next1 = new Page35();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              //------------------child 1----------------------------
              child: Container(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Page34()));
                      },
                      child: CircleAvatar(
                        radius: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image(
                              image: AssetImage('assets/image/bil.jpg')),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Name Here'),
                    Text(
                      'Front end & UI',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------child 2-----------------------------------
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MiniCard(text1, next),
                  MiniCard(text2, next),
                  MiniCard(text3, next1),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//--------------------classes-----------------------------------

class MiniCard extends StatelessWidget {
  String text;
  String pic;
  var next;
  MiniCard(this.text, this.next);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => next));
      },
      child: Container(
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
                    width: 15,
                  ),
                  Icon(
                    Icons.person_outline,
                    color: Colors.red[800],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(width: 250, child: Text(text)),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                  ),
                ],
              ))),
    );
  }
}
