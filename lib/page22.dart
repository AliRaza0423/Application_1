import 'package:flutter/material.dart';

class Page22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------main display---------------------
      body: Stack(
        children: [
          //--------------1st black screen---------------
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.black,
          ),
          // ----------------2nd white disply containing cards-----------------------
          Positioned(
            top: 0,
            left: 0,
            right: 80,
            child: Container(
              padding: EdgeInsets.all(10),
              // width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: 600,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Joined Members',
                        style: TextStyle(color: Colors.red[800]),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  MiniCard('Member Name', 'Designation'),
                  MiniCard('Member Name', 'Designation'),
                  MiniCard('Member Name', 'Designation'),
                  MiniCard('Member Name', 'Designation'),
                  MiniCard('Member Name', 'Designation'),
                  MiniCard('Member Name', 'Designation'),
                ],
              ),
            ),
          ),
          //----------------------3rd close button ---------------------
          Positioned(
            top: 45,
            left: 270,
            // right: 200,
            child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ),
        ],
      ),
    );
  }
}

//--------------------------Classes----------------------------------

class MiniCard extends StatelessWidget {
  final String text;
  final String text1;
  MiniCard(this.text, this.text1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/image/bil.jpg"),
          ),
        ),
        title: Text(text),
        subtitle: Text(
          text1,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ),
    );
  }
}
