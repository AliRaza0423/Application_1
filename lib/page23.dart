import 'package:flutter/material.dart';
import 'package:task_1/appbar.dart';
import 'package:task_1/page27.dart';
import 'page24.dart';

class Page23 extends StatelessWidget {
  String requestA = 'Request For Laptop';
  String requestB = 'Rquest For Hiring';
  String requestC = 'Rquest For Casual Leave';
  String content =
      'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
  String empty = '';
  String aproved = 'Approved';
  String pend = 'Pending';
  String yes = 'Approved';
  String no = 'pe';

// final darkRed = Color(0xffbf2634);
// final lightPink = Color(0xffF8E7E9);
// final lightGreen = Color(0xffD6FBE0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('My Request'),
      body: Center(
        //----------------------Main display----------------------------
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            //-----------1st card---------------
            ListTile(
              leading: Image(
                image: AssetImage('assets/image/ic.jpg'),
                height: 30,
              ),
              title: Text('Team Request'),
            ),
            //-------------2nd card-------------------
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.grey[50],
                    radius: 25,
                    child: Icon(
                      Icons.person,
                      color: Colors.red[800],
                    )),
                title: Text('Pending Request 2'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.grey[50],
                  radius: 15,
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page27()));
                },
              ),
            ),
            //------------------3rd card-----------------------
            ListTile(
              leading: Image(
                image: AssetImage('assets/image/ic.jpg'),
                height: 30,
              ),
              title: Text('My Request'),
              trailing: TextButton(
                child: Text(
                  'View All',
                  style: TextStyle(color: Colors.red[800]),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page24()));
                },
              ),
            ),
            //--------------reused cards & buttons from page24-------------------------
            RedCreateButton(),
            MiniCardRequest(requestA, content, pend, no),
            MiniCardRequest(requestB, empty, aproved, yes),
            MiniCardRequest(requestC, content, aproved, yes),
          ],
        ),
      ),
    );
  }
}
