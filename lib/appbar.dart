//.................custom appbar...............

import 'package:flutter/material.dart';
import 'page16.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final String titilee;
  Appbar(this.titilee);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(titilee),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Page16()));
            },
          )
        ],
      ),
    );
  }
}
