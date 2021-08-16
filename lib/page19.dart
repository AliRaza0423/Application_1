import 'package:flutter/material.dart';
import 'package:task_1/page2.dart';
import 'package:task_1/page20.dart';
import 'package:task_1/page3.dart';
import 'package:task_1/page7.dart';
import 'package:task_1/page8.dart';
import 'package:task_1/page9.dart';

import 'page16.dart';
import 'page5.dart';

class Page19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
//....................... Main screen............................................

          Container(                      
            color: Color(0xffF4F4F4),
            height: 2700,
            width: MediaQuery.of(context).size.width * 1,
            child: Stack(
              children: [
//........................1st container of stack containing image..............................

                Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: 225,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/forest.jpg'),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/image/bil.jpg'),
                          // minRadius: 5,
                          maxRadius: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Name Here',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Front-End & UI',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

//........................2nd container of stack containing all Cards..............................

                Positioned(
                  left: 0,
                  right: 0,
                  // top: MediaQuery.of(context).size.height * 0.25,
                  top: 205,
                  // bottom: 0,
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Color(0xffF4F4F4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                        ),

// ----------------Announcement Card-----------------------

                        Container(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/image/ic.jpg'),
                                  height: 30,
                                ),
                                // leading: CircleAvatar(
                                //   // radius: 30,
                                //   child: ClipRRect(
                                //     borderRadius: BorderRadius.zero,
                                //     child: Image(image: AssetImage('asstes/image/ic.jpg')),
                                //   ),

                                //   backgroundColor: Colors.orange,
                                //   // backgroundImage: AssetImage('assets/image/2.png',),
                                //   // foregroundColor: Colors.orange,
                                // ),
                                title: Text('Announcement'),
                                // trailing: Text('View All'),
                                trailing: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Page7()));
                                    },
                                    child: Text(
                                      'View All',
                                      style: TextStyle(color: Colors.red[800]),
                                    )),
                              ),
                              Container(
                                height: 300,
                                // color: Colors.blue,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      // color: Colors.blue,
                                      // margin: EdgeInsets.all(10),
                                      // height: 80,
                                      // width: 370,
                                      child: MiniCardAnnouncement(),
                                      // color: Colors.yellow,
                                    ),
                                    Container(
                                      color: Colors.transparent,
                                      // margin: EdgeInsets.all(10),
                                      // width: 250,
                                      // height: 100,
                                      child: MiniCardAnnouncement(),
                                      // color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

//----------------------Birthday Card--------------------------

                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/image/ic.jpg'),
                                  height: 30,
                                ),
                                // leading: CircleAvatar(
                                //   backgroundColor: Colors.orange,
                                // ),
                                title: Text('Birthday'),
                                trailing: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Page8()));
                                    },
                                    child: Text(
                                      'View All',
                                      style: TextStyle(color: Colors.red[800]),
                                    )),
                              ),
                              Container(
                                height: 160,
                                color: Colors.transparent,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      // color: Colors.blue,
                                      // margin: EdgeInsets.all(10),
                                      // height: 100,
                                      // width: 370,
                                      child: MiniCardbirthday(),
                                      // color: Colors.yellow,
                                    ),
                                    Container(
                                      // color: Colors.blue,
                                      // margin: EdgeInsets.all(10),
                                      // width: 250,
                                      // height: 100,
                                      child: MiniCardbirthday(),
                                      // color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

//-------------------------Leave Menagement Card---------------------------

                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/image/ic.jpg'),
                                  height: 30,
                                ),
                                // leading: CircleAvatar(
                                //   backgroundColor: Colors.orange,
                                // ),
                                title: Text('Leave Management'),
                                trailing: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Page9()));
                                    },
                                    child: Text(
                                      'View All',
                                      style: TextStyle(color: Colors.red[800]),
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 30),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  height: 290,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    // scrollDirection: Axis.horizontal,
                                    children: [
                                      MiniCardleave1('Anual Leaves',
                                          '20 anual leaves pending'),
                                      MiniCardleave1('Casual Leaves',
                                          '20 anual leaves pending'),
                                      MiniCardleave1('Sick Leaves',
                                          '20 anual leaves pending'),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: ElevatedButton(
                                          child: Text('Apply now'),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.red[800],
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                backgroundColor: Colors.grey[100],
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20)),
                                                title: Text('Apply Leave'),
                                                content: SingleChildScrollView(
                                                  child: Container(
                                                    height: 320,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Dropdown('Date'),
                                                        Dropdown('Leave Type'),
                                                        TextField(
                                                            maxLines: 2,
                                                            decoration: InputDecoration(
                                                                hintText: 'Comment',
                                                                hintStyle:
                                                                    TextStyle(color: Colors.grey),
                                                                filled: true,
                                                                fillColor: Colors.white,
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(10),
                                                                  borderSide: BorderSide(
                                                                      color: Colors.transparent,
                                                                      width: 0),
                                                                ),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(10),
                                                                    borderSide: BorderSide(
                                                                      color: Colors.transparent,
                                                                    )))),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        ElevatedButton(
                                                            onPressed: () {
                                                              showDialog(
                                                                context: context,
                                                                builder: (context) => AlertDialog(
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(20)),
                                                                  title: Row(
                                                                    children: [
                                                                      SizedBox(
                                                                        width: 210,
                                                                      ),
                                                                      IconButton(
                                                                        icon: Icon(Icons.close),
                                                                        onPressed: () {
                                                                          Navigator.of(context).pop();
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  content: SingleChildScrollView(
                                                                    child: Container(
                                                                      // height: 320,
                                                                      color: Colors.white,
                                                                      child: Column(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.check_circle,
                                                                            size: 60,
                                                                            color: Colors.green,
                                                                          ),
                                                                          SizedBox(
                                                                            height: 50,
                                                                          ),
                                                                          Text(
                                                                              'You have Applied for your leave'),
                                                                          Text(
                                                                              'Waiting for approval'),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                                primary: Colors.red[800],
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(10))),
                                                            child: Text(
                                                              'Apply Now',
                                                              style: TextStyle(color: Colors.white),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

//----------------------Team Member Card-------------------------

                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/image/ic.jpg'),
                                  height: 30,
                                ),
                                // leading: CircleAvatar(
                                //   backgroundColor: Colors.orange,
                                // ),
                                title: Text('Team Member'),
                                // trailing: Text('View All'),
                                trailing: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Page2()));
                                    },
                                    child: Text(
                                      'View All',
                                      style: TextStyle(color: Colors.red[800]),
                                    )),
                              ),
                              Container(
                                 
                                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 10),
                                height: 220,
                                // width: 320,
                                width: MediaQuery.of(context).size.width * 1,
                                // color: Colors.white,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: LinearBar('Today Detail')
                              ),
                            ],
                          ),
                        ),

//-------------------------Event Card------------------------------

                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/image/ic.jpg'),
                                  height: 30,
                                ),
                                // leading: CircleAvatar(
                                //   backgroundColor: Colors.orange,
                                // ),
                                title: Text('Events'),
                                // trailing: Text('View All'),
                                trailing: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (contex) => Page20(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'View All',
                                      style: TextStyle(color: Colors.red[800]),
                                    )),
                              ),
                              Container(
                                height: 350,
                                color: Colors.transparent,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      // color: Colors.blue,
                                      // margin: EdgeInsets.all(10),
                                      // height: 100,
                                      // width: 370,
                                      child: MiniCardevent(),
                                    ),
                                    Container(
                                      // color: Colors.blue,
                                      // margin: EdgeInsets.all(10),
                                      // width: 250,
                                      // height: 100,
                                      child: MiniCardevent(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

//---------------------------Up Comming Holiday Card--------------------
                      
                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage('assets/image/ic.jpg'),
                                  height: 30,
                                ),
                                // leading: CircleAvatar(
                                //   backgroundColor: Colors.orange,
                                // ),
                                title: Text('Upcoming Holidays'),
                                trailing: Text(
                                  'View All',
                                  style: TextStyle(color: Colors.red[800]),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 30),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  height: 290,
                                  // width: 300,
                                  // color: Colors.white,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    // scrollDirection: Axis.horizontal,
                                    children: [
                                      MiniCardleave1('Iqbal Day', '20-10-2021'),
                                      MiniCardleave1(
                                          'Independance Day', '20-10-2021'),
                                      MiniCardleave1('Labour Day', '20-10-2021')
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
//........................3rd container of stack ..............................
                Positioned(
                  left: 40,
                  right: 40,
                  top: 190,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    // borderOnForeground: true,
                    // color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          border: Border(
                              bottom: BorderSide(
                            color: Colors.red[800],
                            width: 3,
                          ))),
                      height: 150,
                      width: 300,
                      child: Row(
                        children: [
                          Container(
                            width: 190,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Check In',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'You haven`t clock in yet',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                Text(
                                  '00 : 00 :00 HRS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Page3()));
                                    },
                                    child: Text(
                                      'View History',
                                      style: TextStyle(color: Colors.red[800]),
                                    ))
                              ],
                            ),
                          ),
                          
          // .......for check in Button.......
                          
                          Container(            
                            width: 120,
                            height: 120,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  100,
                                ),
                                border: Border.all(
                                    color: Colors.red[800], width: 5)),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Check In',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red[800],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          )
                          // CircleAvatar(
                          //   radius: 30,
                          //   backgroundColor: Colors.red,
                          // )
                        ],
                      ),
                    ),
                  ),
                ),

//..................4th container of Stack (the bell button)......................

                Positioned(
                    top: 25,
                    // left: 350,
                    right: 25,
                    child: Container(
                      // color: Colors.red,
                      // width: 10,
                      // height: 30,
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Page16()));
                        },
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}