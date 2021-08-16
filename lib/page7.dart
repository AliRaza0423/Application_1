import 'package:flutter/material.dart';
import 'page16.dart';
import 'appbar.dart';
// import 'package:flutter/scheduler.dart';

class Page7  extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Announcement'
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // --------------MAin cards disply----------------
                MiniCardAnnouncement(),
                MiniCardAnnouncement(),
                MiniCardAnnouncement(),
                MiniCardAnnouncement(),
                MiniCardAnnouncement(),
              ],
            ),
          ),
        ),
    );
  }
}

//-----------------------Classes---------------------------------------------------

class MiniCardAnnouncement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //--------main container of card--------
      width: 350,
      height: 240,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),),
          color: Colors.white,
      ),
      //-----------------text in card-----------------
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('This super Leogue lorem 2017', 
          style: TextStyle(
            color: Colors.red[800],
            fontWeight: FontWeight.bold,
            fontSize: 17,
            ),
          ),
          SizedBox(height: 30.0,),

          Text('Hello guys, we have discussed about post-corona vacation plan and out decision is to go to bali. We have have a very big party after this corona ends!',
          style: TextStyle(
            fontSize: 15,
          ),),
          SizedBox(height: 50),
          Text('14:01 20/10/2020', style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),),
        ],
      ),
    );
  }
}