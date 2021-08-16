import 'package:flutter/material.dart';

class Page11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MiniCard(),
          MiniCard(),
          MiniCard(),
          MiniCard(),
          MiniCard(),
          MiniCard(),
          MiniCard(),
          MiniCard(),
        ],
      )),
    );
  }
}

//-------------------Classes-------------------------------------

class MiniCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 400,
      width: MediaQuery.of(context).size.width * 1,
      height: 90,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          //----------Leading image----------------------
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
          //-------------------text after image--------------------
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lee Williamson',
                style: TextStyle(),
              ),
              Text('Designation'),
            ],
          ),
        ],
      ),
    );
  }
}
