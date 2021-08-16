import 'package:flutter/material.dart';
import 'package:task_1/page21.dart';
import 'page16.dart';
import 'appbar.dart';

class Page20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Events'),
      body: ListView(
        children: [
          //----------------------MAin display-------------------
          MiniCardevent(),
          MiniCardevent(),
          MiniCardevent(),
          MiniCardevent(),
          MiniCardevent(),
        ],
      ),
    );
  }
}

//-------------------Classes-------------------------------------------

class MiniCardevent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Page21(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            //----------------------------mian Container--------------------------
            child: Column(
              children: [
                //--------------image block----------------------
                Image(
                  image: AssetImage('assets/image/Event.jpg'),
                  height: 170,
                  fit: BoxFit.cover,
                ),
                //---------text below picture---------------
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                      child: Column(
                        children: [
                          Text(
                            '31',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text('Jun',
                              style: TextStyle(
                                  color: Colors.red[800], fontSize: 15)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'This super leogue Lorem 2017',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red[800],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('16:04 20/10/2021',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
