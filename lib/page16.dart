import 'package:flutter/material.dart';

class Page16 extends StatelessWidget {
  String text1 = '16:04  20-10-2021';
  String text2 = 'Your leave request is approved';
  String text3 = 'Your leave request is rejected';
  String text4 = 'Lorem Added on Announcement';
  IconData icon1 = Icons.check_box;
  IconData icon2 = Icons.cancel;
  IconData icon3 = Icons.campaign;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notification'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Text(
                  'New Notification',
                  style: TextStyle(),
                ),
                MiniCard(text2, text1, icon1),
                MiniCard(text3, text1, icon2),
                Text('Earlier'),
                MiniCard(text2, text1, icon1),
                MiniCard(text3, text1, icon2),
                MiniCard(text4, text1, icon3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//-----------------Claeese----------------------------------------------

class MiniCard extends StatelessWidget {
  String text1;
  String text2;
  final IconData next;
  MiniCard(this.text1, this.text2, this.next);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Icon(
                next,
                size: 50,
                color: Colors.green,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1),
                  Text(
                    text2,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
