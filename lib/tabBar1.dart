//.......................contain page4, 5, 6, 18..............................

import 'package:flutter/material.dart';
import 'package:task_1/page18.dart';
import 'package:task_1/page4.dart';
import 'package:task_1/page5.dart';
import 'package:task_1/page6.dart';

class Tabbar1 extends StatefulWidget {
  @override
  _Tabbar1State createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> with SingleTickerProviderStateMixin {
  final List<String> titleList = [
    'Personal Information',
    'Experience',
    'Education',
    'Skills'
  ];
  String currentTitle;

  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTitle = titleList[0];
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
    _controller.addListener(changeTitle); // Registering listener
  }

  void changeTitle() {
    setState(() {
      // get index of active tab & change current appbar title
      currentTitle = titleList[_controller.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(currentTitle),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              // text: 'Your Performance',
              icon: Icon(
                Icons.fiber_manual_record_rounded,
                color: Colors.red,
                size: 10,
              ),
            ),
            Tab(
              // text: 'Team Performance',
              icon: Icon(
                Icons.fiber_manual_record_rounded,
                color: Colors.red,
                size: 10,
              ),
            ),
            Tab(
              // text: 'Team Performance',
              icon: Icon(
                Icons.fiber_manual_record_rounded,
                color: Colors.red,
                size: 10,
              ),
            ),
            Tab(
              // text: 'Team Performance',
              icon: Icon(
                Icons.fiber_manual_record_rounded,
                color: Colors.red,
                size: 10,
              ),
            ),
          ],
          indicatorColor: Colors.grey,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: TabBarView(controller: _controller, children: [
        Page4(
          controller: _controller,
        ),
        Page5(
          controller: _controller,
        ),
        Page6(
          controller: _controller,
        ),
        Page18(),
      ]),
    );
  }
}
