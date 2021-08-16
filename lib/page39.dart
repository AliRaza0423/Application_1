import 'package:flutter/material.dart';
import 'package:task_1/page24.dart';
import 'package:task_1/page27.dart';

class Page39 extends StatelessWidget {
  String content =
      'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Leave History'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                card1(),
                card1(),
                card1(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 295,
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
          SizedBox(
            height: 10,
          ),
          MiniCardRequest('Leave Type', content, 'Pending', 'pend'),
          SizedBox(height: 20,),
          MiniCardRequest1('Request for Laptop', content),
          MiniCardRequest('Leave Type', content, 'Approved', 'Approved'),

        ],
      ),
    );
  }
}

//-------------------------------Classes--------------------------------

class card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[100],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('assets/image/chain.png'),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'ANual Leaves',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '20 Pending',
              style: TextStyle(color: Colors.grey),
            ),
          ]),
    );
  }
}
