import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'page36.dart';

class Page35 extends StatefulWidget {
  @override
  _Page35State createState() => _Page35State();
}

class _Page35State extends State<Page35> {
  String text1 =
      'Hello guys We have discussed about the post_corona vacation plan and our decision to go to Bali';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Experience'),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          //---------------------center image + edit button---------------------
          Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image(image: AssetImage('assets/image/bil.jpg')),
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
                SizedBox(
                  height: 15,
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Page36()));
                  },
                  label: Text(
                    'Edit',
                    style: TextStyle(color: Colors.red[800]),
                  ),
                  icon: Icon(
                    Icons.edit,
                    color: Colors.red[800],
                  ),
                ),
              ],
            ),
          ),
          //---------------body------------------------
          mytext('Experience                                              YRS'),
          Text(
            'Skills',
            style: TextStyle(color: Colors.grey),
          ),
          Chipmaker(),      // reused from page 36
          mytext('Education'),
          mytext('Interest'),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                text1,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )),
        ],
      ),
    );
  }
//------------------------custom widget-----------------------------------
  Widget mytext(String text) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ));
  }
}
