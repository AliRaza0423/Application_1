import 'package:flutter/material.dart';
import 'package:task_1/page19.dart';
import 'package:task_1/page23.dart';
import 'performance_tabbar.dart';
import 'page30.dart';

int count1;

class Nav extends StatefulWidget {
  // int count;
  Nav(int count) {
    // this.count = count;
    count1 = count;
  }
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentindex = count1;

  final tabs = [
    Center(child: Page19()),
    Center(child: PerformanceTabbar()),
    Center(child: Page23()),
    Center(child: Page30()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text('Team History'),
        //   actions: <Widget>[
        //     IconButton(
        //       icon: Icon(
        //         Icons.notifications,
        //         color: Colors.white,
        //       ),
        //       onPressed: () {},
        //     )
        //   ],
        // ),

        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red[800],
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text('home'),
                // backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                title: Text('Performance'),
                // backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add),
                title: Text('Requests'),
                // backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                title: Text('More'),
                // backgroundColor: Colors.blue,
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            })
        // child: SingleChildScrollView(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[

        //     ]
        // ),
        // ).
        );
  }
}
