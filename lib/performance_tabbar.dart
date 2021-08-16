//................contain page 11 &page12..........................

import 'package:flutter/material.dart';
import 'package:task_1/page11.dart';
import 'package:task_1/page12.dart';
import 'page16.dart';

class PerformanceTabbar extends StatefulWidget {
  @override
  _PerformanceTabbarState createState() => _PerformanceTabbarState();
}

class _PerformanceTabbarState extends State<PerformanceTabbar>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Performance'),
          actions: [
            IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page16()));
                })
          ],
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Tab(
                text: 'Your Performance',
              ),
              Tab(
                text: 'Team Performance',
              ),
            ],
          )),
      body: TabBarView(controller: _controller, children: [
        Page12(),
        Page11(),
      ]),
    );
  }
}
