// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_1/page38.dart';

class Page31 extends StatelessWidget {
  var nav = new Page38();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Team'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MiniCard(nav),
            MiniCard(nav),
            MiniCard(nav),
            MiniCard(nav),
            MiniCard(nav),
            MiniCard(nav),
            MiniCard(nav),
            MiniCard(nav),
          ],
        )),
      ),
    );
  }
}

//------------------classes-------------------------------------------

class MiniCard extends StatelessWidget {
  var nav;
  MiniCard(this.nav);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => nav));
      },
      child: Container(
        width: 400,
        height: 90,
        margin: EdgeInsets.all(15),
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
                CircleAvatar(
                  radius: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/image/bil.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lee Williamson',
                      style: TextStyle(),
                    ),
                    Text('Designation'),
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
