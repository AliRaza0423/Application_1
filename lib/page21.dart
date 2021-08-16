import 'package:flutter/material.dart';
import 'package:task_1/page20.dart';
import 'package:task_1/page22.dart';

import 'page16.dart';

class Page21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //---------------------------Main body-------------------------------------
          Container(
            height: 800,
            child: Stack(
              children: [
                //-----------------------image portion------------------------
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/Event.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 250,
                    // color: Colors.red,
                    child: Stack(
                      children: [
                        //...........back arrow in picture portion..........
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 320,
                          child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (contex) => Page20(),
                                  ),
                                );
                              }),
                        ),
                        //............notification icon in picture portion..........
                        Positioned(
                          top: 30,
                          left: 320,
                          right: 0,
                          child: IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Page16()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //---------------------2nd portion till elevation line----------------------
                Positioned(
                    top: 250,
                    left: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      height: 170,
                      // color: Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text('This super league Lorem 2017'),
                            subtitle: Text('Thu Oct 19, 2021 at 3:00pm'),
                            trailing: Text(
                              'admin',
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('30 Members are going')),
                          SizedBox(
                            height: 10,
                          ),
                          //.................images in row + butons.....................
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 140,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      left: 80,
                                      // right: 0,
                                      // bottom: 0,
                                      child: Container(
                                        // width: 50,
                                        // height: 50,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color(0xffF4F4F4),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.asset(
                                                'assets/image/bil.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 40,
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color(0xffF4F4F4),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.asset(
                                                'assets/image/bil.jpg'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      // right: 0,
                                      // bottom: 0,
                                      child: Container(
                                        // width: 50,
                                        // height: 50,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color(0xffF4F4F4),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.asset(
                                                'assets/image/bil.jpg'),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (contex) => Page22()));
                                  },
                                  child: Text(
                                    'SHOW',
                                    style: TextStyle(color: Colors.red[800]),
                                  )),
                              SizedBox(
                                width: 70,
                              ),
                              SizedBox(
                                width: 80,
                                // height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Page20()),
                                    );
                                  },
                                  child: Text(
                                    'Join',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red[800]),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                //----------------text---------------------------
                Positioned(
                  top: 250,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 350,
                    // color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 180,
                        ),
                        Text(
                          'Event Detail',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Hello guys, we have discussed about past-corono vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends!Hello guys, we have discussed about past-corono vacation plan and our decision is to go to Bali. We will  have a very big party after this corona ends!')
                      ],
                    ),
                  ),
                ),
                //--------------------------map-----------------------------------------
                Positioned(
                  top: 600,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/GoogleMap.jpg'),
                            fit: BoxFit.cover)),
                    height: 200,
                    // color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
